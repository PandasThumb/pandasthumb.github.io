---
layout: article
title: Steiner Genetic Algorithm - C++ Code
date: '2006-07-08 14:49:52 -0700'
author: Dave Thomas
mt_id: 2439
blog_id: 2
post_id: 2439
basename: steiner_genetic
---
Here follows the guts of my new C++ program for solving Steiner Tree problems with a Genetic Algorithm.

I have eliminated much of the Microsoft Foundation Class support code, focusing mainly on the number-crunching routines.  I will be happy to share the complete code with interested parties.

The original FORTRAN version from five years ago is still [online at NMSR](http://www.nmsr.org/genetic.htm).

You'll see that I've cleaned up and organized everything quite a bit, and completely re-done the snippet which checks for properly connected solutions.

Dave
August 21st, 2006

```
// SteinerGADlg.cpp : implementation file

#include "stdafx.h"
#include "SteinerGA.h"
#include "SteinerGADlg.h"
#include "Prefs.h"
#include "Geometry.h"
#include "StartDisplay.h"
#include <string.h>
#include <ctype.h>
#include <math.h>

// CSteinerGADlg dialog

CSteinerGADlg::CSteinerGADlg(CWnd* pParent /*=NULL*/)
	: CDialog(CSteinerGADlg::IDD, pParent)
{
	//{ {AFX_DATA_INIT(CSteinerGADlg)
	m_pixel_rpt = _T("");
	m_status = _T("");
	m_target = FALSE;
	m_drawon = FALSE;
	m_statusrpt = _T("");
	//} }AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

CSteinerGADlg::~CSteinerGADlg(void) // destructor
{
	if (pRedPen != NULL)
		delete 	pRedPen;
	if (pBigRedPen != NULL)
		delete 	pBigRedPen;
	if (pGreenPen != NULL)
		delete 	pGreenPen;
	if (pBigGreenPen != NULL)
		delete 	pBigGreenPen;
	if (pBluePen != NULL)
		delete 	pBluePen;
	if (pBigBluePen != NULL)
		delete 	pBigBluePen;
	if (pBlackPen != NULL)
		delete 	pBlackPen;
	if (pBigBlackPen != NULL)
		delete 	pBigBlackPen;
	if (pWhitePen != NULL)
		delete 	pWhitePen;
	if (pBigWhitePen != NULL)
		delete 	pBigWhitePen;

	Cleanup();

}

void CSteinerGADlg::Allocate(void)
{
	m_npts = m_fixdnodes + m_varbnodes;
	m_combs = m_npts*(m_npts-1)/2; // nC2, n things 2 at a time....
	m_ndigs = m_varbnodes*3*2; // how many digits are in coord-map...
	m_ntot = 2 + m_ndigs + m_combs;

	m_xFixd = new double[m_fixdnodes]; // need for other stuff, like geo-entry, before Run.
	m_yFixd = new double[m_fixdnodes];
	m_xVarb = new double[m_varbnodes];
	m_yVarb = new double[m_varbnodes];

	m_conmap = new bool[m_combs];
	m_got = new bool[m_npts];
	m_fitness = new double[m_maxpop];
	m_sortids = new int[m_maxpop];

	int a;
	for (a=0; a<m_fixdnodes; a++)
		m_xFixd[a] = m_yFixd[a] = 0.0;
	for (a=0; a<m_varbnodes; a++)
		m_xVarb[a] = m_yVarb[a] = 0.0;
	for (a=0; a<m_combs; a++)
		m_conmap[a] = FALSE;
	for (a=0; a<m_npts; a++)
		m_got[a] = FALSE;
	for (a=0; a<m_maxpop; a++)
	{
		m_fitness[a] = m_death;
		m_sortids[a] = -1;
	}
}

void CSteinerGADlg::Cleanup(void)
{
	if (m_xFixd != NULL)// data arrays
		delete [] m_xFixd;
	if (m_yFixd != NULL)// data arrays
		delete [] m_yFixd;
	if (m_xVarb != NULL)// data arrays
		delete [] m_xVarb;
	if (m_yVarb != NULL)// data arrays
		delete [] m_yVarb;

	if (m_conmap != NULL)// data arrays
		delete [] m_conmap;
	if (m_got != NULL)// data arrays
		delete [] m_got;
	if (m_fitness != NULL)// data arrays
		delete [] m_fitness;
	if (m_sortids != NULL)// data arrays
		delete [] m_sortids;

	m_xFixd = NULL; // need for other stuff, like geo-entry, before Run.
	m_yFixd = NULL;
	m_xVarb = NULL;
	m_yVarb = NULL;

	m_conmap = NULL;
	m_got = NULL;
	m_fitness = NULL;
	m_sortids = NULL;
}

/////////////////////////////////////////////////////////////////////////////
// CSteinerGADlg message handlers

BOOL CSteinerGADlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here
	pRedPen = new CPen(PS_SOLID,1,RGB(255,0,0));
	pBigRedPen = new CPen(PS_SOLID,2,RGB(255,0,0));

	pGreenPen = new CPen(PS_SOLID,1,RGB(0,255,0));
	pBigGreenPen = new CPen(PS_SOLID,2,RGB(0,255,0));

	pBluePen = new CPen(PS_SOLID,1,RGB(0,0,255));
	pBigBluePen = new CPen(PS_SOLID,2,RGB(0,0,255));

	pBlackPen = new CPen(PS_SOLID,1,RGB(0,0,0));
	pBigBlackPen = new CPen(PS_SOLID,2,RGB(0,0,0));

	pWhitePen = new CPen(PS_SOLID,1,RGB(255,255,255));
	pBigWhitePen = new CPen(PS_SOLID,2,RGB(255,255,255));

	m_maxgens = 5000;
	m_killgens = 1000;
	m_maxpop = 1000;

	m_death = 100000.0;
	m_mutespergen = 50;
	m_mutesperorg = 3;
	m_bfactor = 1.5;

	m_delay = 1; // milliseconds
	m_rows = 1; // rows of displayed organisms
	m_cols = 1; // cols of displayed organisms
	m_elite = 10; // this number kept as-is after Fitness

	m_xFixd = NULL; // need for other stuff, like geo-entry, before Run.
	m_yFixd = NULL;
	m_xVarb = NULL;
	m_yVarb = NULL;

	m_conmap = NULL;
	m_got = NULL;
	m_fitness = NULL;
	m_sortids = NULL;

	m_fixdnodes = 5;
	m_varbnodes = 4;

	Allocate();

	m_xFixd[0] = 350.0;
	m_yFixd[0] = 300.0;

	m_xFixd[1] = 650.0;
	m_yFixd[1] = 300.0;

	m_xFixd[2] = 200.0;
	m_yFixd[2] = 560.0;
	
	m_xFixd[3] = 800.0;
	m_yFixd[3] = 560.0;

	m_xFixd[4] = 500.0;
	m_yFixd[4] = 733.3;

	m_dxmin = 0.0; // DATA limits (user-def'd)
	m_dxmax = 1500.0;
	m_dymin = 0.0;
	m_dymax = 1500.0;
	
	m_xmin = 20; // plot box mins & maxes
	m_xmax = 460; // 640;
	m_ymin = 20;
	m_ymax = 460;

	m_running = FALSE;
	m_drawon = TRUE;
	m_target = FALSE; // for special Fitness test, proximity to given DNA
	m_digitizing = FALSE;

	UpdateData(FALSE);

		// TODO: Add extra initialization here
	srand( (unsigned)time( NULL ) ); // random seed
	// srand(0); // use for same result every time!!

	HBITMAP hBMP = (HBITMAP)::LoadImage(AfxGetApp()->m_hInstance,MAKEINTRESOURCE(IDB_TARGET),
									IMAGE_BITMAP,56,44,LR_DEFAULTCOLOR);  

	CWnd* pWnd = GetDlgItem(IDC_TARGBMP);
	pWnd->PostMessage(BM_SETIMAGE,IMAGE_BITMAP,(long)hBMP);

	DrawFixdPoints();

	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CSteinerGADlg::Data2Pixel(double xval, double yval, int* x, int* y) // loc to (x,y)
{// scale plot point to m_dxmin, m_dxmax, m_dymin, m_dymax
	// m_xmin, m_xmax, m_ymin, m_ymax
	double xtemp, ytemp;

	xtemp = (double)m_xmin + (double)(m_xmax-m_xmin)*(xval-m_dxmin)/(m_dxmax-m_dxmin);
	ytemp = (double)m_ymax + (double)(m_ymin-m_ymax)*(yval-m_dymin)/(m_dymax-m_dymin);

	*x = (int)xtemp;
	*y = (int)ytemp;
	return;
}

void CSteinerGADlg::Pixel2Data(int x, int y, double* xval, double* yval) // (x,y) to Data
{// scale plot point to m_dxmin, m_dxmax, m_dymin, m_dymax
	// m_xmin, m_xmax, m_ymin, m_ymax
	double xtemp, ytemp;

	xtemp = m_dxmin + (double)(x-m_xmin)*(m_dxmax-m_dxmin)/(double)(m_xmax-m_xmin);
	ytemp = m_dymin + (double)(y-m_ymax)*(m_dymax-m_dymin)/(m_ymin-m_ymax);

	*xval = xtemp;
	*yval = ytemp;
	return;
}

void CSteinerGADlg::Report(LPARAM lParam)
{
	CPoint pt(lParam);
	double xt, yt;

	if (m_box.PtInRect(pt))
	{
		Pixel2Data(pt.x, pt.y, &xt, &yt);
		xt = (double)((int)xt); // round-off
		yt = (double)((int)yt); // round-off
		m_pixel_rpt.Format("%d,%d (pix)\n%.0lf,%.0lf (pos)",pt.x, pt.y, xt, yt);
	}
	else
	{
		m_pixel_rpt.Format("Ready"); // .Empty();
		::SetCursor(AfxGetApp()->LoadStandardCursor(IDC_ARROW));
	}
	UpdateData(FALSE);
}

void CSteinerGADlg::OnGetPrefs() 
{
	CPrefs dlg;
	dlg.m_fixdnodes = m_fixdnodes;
	dlg.m_maxgens = m_maxgens;
	dlg.m_maxpop = m_maxpop;
	dlg.m_varbnodes = m_varbnodes;
	dlg.m_death = m_death;
	dlg.m_mutespergen = m_mutespergen;
	dlg.m_mutesperorg = m_mutesperorg;
	dlg.m_bfactor = m_bfactor;
	dlg.m_delay = m_delay; // milliseconds
	dlg.m_rows = m_rows; // rows of displayed organisms
	dlg.m_cols = m_cols; // cols of displayed organisms
	dlg.m_elite = m_elite; // this number kept as-is after Fitness
	dlg.m_killgens = m_killgens;

	int ret = dlg.DoModal();

	if (ret == IDOK)
	{
		if (m_fixdnodes != dlg.m_fixdnodes || m_varbnodes != dlg.m_varbnodes || m_maxpop != dlg.m_maxpop) // need to re-allocate arrays!
		{ 
			m_fixdnodes = dlg.m_fixdnodes;
			m_varbnodes = dlg.m_varbnodes;
			m_maxpop = dlg.m_maxpop;
			Cleanup();
			Allocate();
		}

		m_maxgens = dlg.m_maxgens;
		m_death = dlg.m_death;
		m_mutespergen = dlg.m_mutespergen;
		m_mutesperorg = dlg.m_mutesperorg;
		m_bfactor = dlg.m_bfactor;
		m_delay = dlg.m_delay; // milliseconds
		m_rows = dlg.m_rows; // rows of displayed organisms
		m_cols = dlg.m_cols; // cols of displayed organisms
		m_elite = dlg.m_elite; // this number kept as-is after Fitness
		m_killgens = dlg.m_killgens;

		m_dxmin = 0.0; // DATA limits (user-def'd)
		m_dxmax = 1000.0*(double)m_cols;
		m_dymin = 0.0;
		m_dymax = 1000.0*(double)m_rows;
	}

	CString str;
	m_status.Format("Parameters Assigned.");
	UpdateData(FALSE);
	
	DrawFixdPoints();
}

void CSteinerGADlg::Create(void) 
{
	m_pop.RemoveAll();
	CString critter;
	int a;

	for (a=0; a<m_maxpop; a++) // for each organism...
	{
		critter = CreateOne();
		m_pop.Add(critter);
	}
	m_statusrpt.Format("Pop Created");
	UpdateData(FALSE);
}

CString CSteinerGADlg::CreateOne(void) 
{
	CString critter, temp, str, dbg;
	int b, num;
	double x;

	critter.Empty();
	// 1st, # nodes
	x = (double)rand() / (double)RAND_MAX;

	num = (int)((double)m_varbnodes*x);

	num = m_varbnodes; // over-ride!!!

	if (num < 10)
		temp.Format("0%1d", num);
	else
		temp.Format("%2d", num);
	critter += temp;

	// 2nd, the variable node coordinates
	for (b=0; b<m_varbnodes*3*2; b++) // for each digit (3 digits*#varbnodes total)...
	{
		x = (double)rand() / (double)RAND_MAX;
		num = (int)(10.0*x); // 0-9
		temp.Format("%1d", num);
		critter += temp;
	}

	// 3rd, the connection map
	for (b=0; b<m_combs; b++) // for each digit (3 digits*#varbnodes)...
	{
		x = (double)rand() / (double)RAND_MAX;
		temp = (x > 0.5) ? "T" : "F" ; // 50/50 @ >0.5
		critter += temp;
	}
	return (critter);
}

void CSteinerGADlg::OnTest() // implement simple Random Search
{
	CString critter, bestCritter;
	double fitness, bestLength = m_death;
	int a, bestGen;

	bestGen = 0;
	for (a=0; a<10000000; a++)
	{
		critter = CreateOne();

		fitness = Fitness(critter);
		if (fitness < bestLength)
		{
			bestLength = fitness;
			bestCritter = critter;
			bestGen = a;
			drawOne(bestCritter,bestGen,0);
		}
		if (a%1000 == 0)
		{
			m_statusrpt.Format("Random Search # %d", a);
			UpdateData(FALSE);
		}
	}
	return;
}

int CSteinerGADlg::Transcribe(CString critter) 
{
	// need to fill data arrays m_xVarb and m_yVarb (double);
	int a, nnode, pos; // b, 
	double num;
	bool temp;
	CString str;

	str = critter.Mid(0,2); // 1st 2 digits
	nnode = String2Integer(str);

	for (a=0; a<nnode; a++) // for each varb. node...
	{
		pos = 2+a*6;
		str = critter.Mid(pos,3); // x coord
		num = String2Double(str);
		m_xVarb[a] = (double)num;
		str = critter.Mid(pos+3,3); // y coord
		num = String2Double(str);
		m_yVarb[a] = num;
	}

	for (a=0; a<m_combs; a++) // for each bit of the connections bitmap...
	{
		pos = 2 + m_ndigs + a;

		str = critter.Mid(pos,1); // a T or F bit
		temp = (str == "T") ? TRUE : FALSE ;
		m_conmap[a] = temp;
	}
	return(nnode);
}


int CSteinerGADlg::String2Integer(CString str) 
{
	int num;
	num = atoi(str);
	return(num);
}

double CSteinerGADlg::String2Double(CString str) 
{
	double num;
	num = (double)atoi(str);
	return(num);
}

double CSteinerGADlg::Fitness(CString critter) 
{
	m_nextra = Transcribe(critter); // number of variable (Steiner) points

	int a,b,i,numseg;
	double x1, y1, x2, y2, dx, dy, dr, sum;

	if (!Connected())
		return(m_death);

	numseg = 0;
	sum = 0.0;
	for (a=0; a<m_npts-1; a++)
	{
		if (a < m_fixdnodes)
		{
			x1 = m_xFixd[a];
			y1 = m_yFixd[a];
		}
		else
		{
			x1 = m_xVarb[a-m_fixdnodes];
			y1 = m_yVarb[a-m_fixdnodes];
		}
		for (b=a+1; b<m_fixdnodes + m_nextra; b++)
		{
			i = ConMapIndex(a,b);
			if (b < m_fixdnodes)
			{
				x2 = m_xFixd[b];
				y2 = m_yFixd[b];
			}
			else
			{
				x2 = m_xVarb[b-m_fixdnodes];
				y2 = m_yVarb[b-m_fixdnodes];
			}
			if (m_conmap[i]) // connection is enabled...
			{
				dx = x2 - x1;
				dy = y2 - y1;
				dr = sqrt(dx*dx + dy*dy);
				sum += dr;
			}
		}
	}

	if (m_target) // over-ride fitness test with specified target (= The Kluge)!
		sum = Fitness2(critter);

	return(sum);
}

double CSteinerGADlg::Fitness2(CString critter) // specific target
{
	int a;
	double sum = 0.0;
	CString ch1, ch2;
	// note the following target DNAs are for fixd=5, varb=4
	CString target;
	// target = "04391498500562650475349474FFFFFFFTFFFFFTFFFFFFTFFFTFFTFFFFFTTF";// the Steiner
	target = "04614580132412507588758509TFFTFTFFTFFTFFTFFFFTFFFFFTTFFFFTTFFF"; // the Kluge
	for (a=0; a<critter.GetLength(); a++)
	{
		ch1 = critter.Mid(a,1);
		ch2 = target.Mid(a,1);
		if (ch1 != ch2) // if character from organism is different from same character in Target, add 1 to distance
			sum += 1.0;
	}
	return (sum);
}

bool CSteinerGADlg::Connected(void)
{
	int a,b,r;
	int npoints = m_fixdnodes + m_nextra; // activated nodes

	// general init
	for (a=0; a<m_npts; a++)
	{
		m_got[a] = FALSE;
	}

	// init point the First
	m_got[0] = TRUE;

	for (r=0; r<2; r++) // do once, then repeat to catch connections from on high
	{
		// 1st loop go up....
		for (a=0; a<npoints-1; a++)
		{
			for (b=a+1; b<npoints; b++)
			{
				if (m_conmap[ConMapIndex(a,b)] && (m_got[a] || m_got[b]))
				{
					m_got[a] = m_got[b] = TRUE;
				}
			}
		}
		// 2nd loop go down....
		for (b=npoints-1; b>0; b--)
		{
			for (a=b-1; a>-1; a--) // note keeping b>a still...
			{
				if (m_conmap[ConMapIndex(a,b)] && (m_got[a] || m_got[b]))
				{
					m_got[a] = m_got[b] = TRUE;
				}
			}
		}
	}
	// now check fixed nodes for connects...
	for (a=0; a<m_fixdnodes; a++)
	{
		if (!m_got[a])
		{
			return(FALSE);
		}
	}

	return(TRUE);
}

int CSteinerGADlg::ConMapIndex(int a, int b) // returns index into bitmap for pt.a to pt.b
{
	int ans = -1 + a*(2*m_npts - a - 3)/2 + b;
	return(ans);
}

void CSteinerGADlg::drawOne(CString critter, int gen, int pop)
{
	int a, b, i;
	double x1,y1,x2,y2;
	int xi1,yi1,xi2,yi2;
	CString str, str2;

	double fitness = Fitness(critter);

	CWnd* pWnd = GetDlgItem(IDC_DRAWRING);
	CDC* pDC = pWnd->GetDC();
		
	CBrush Brush(RGB(255,255,255)); // white!
	CRect bx = m_box;
	pDC->FillRect(&bx, &Brush);

	// display DNA & fitness
	str = critter.Mid(0,2);
	str += " ";
	for (a=0; a<m_varbnodes; a++)
	{
		b = 2+a*6;
		str2.Format(" (%s,%s)", critter.Mid(b,3), critter.Mid(b+3,3));
		str += str2;
	}
	pDC->TextOut(25,25,str);
	str = critter.Mid(2+m_ndigs, m_combs);
	pDC->TextOut(25,45,str);
	str.Format("%.1lf",fitness);
	if (gen > -1 && pop > -1)
		str.Format("Gen%d, Org%d, F=%.1lf",gen, pop, fitness);
	pDC->TextOut(25,65, str);

	// draw fixed points...
	pDC->SelectObject(pBluePen);
	pDC->SetTextColor(RGB(0,0,255)); // BLUE

	for (a=0; a<m_fixdnodes; a++)
	{
		x1 = m_xFixd[a];
		y1 = m_yFixd[a];

		Data2Pixel(x1, y1, &xi1, &yi1);

		pDC->Ellipse(xi1-3,yi1-3,xi1+3,yi1+3);

		str.Format("%d",a+1);
		pDC->TextOut(xi1,yi1,str);
	}

	// draw variable points...
	pDC->SetTextColor(RGB(0,255,0)); // GREEN
	pDC->SelectObject(pGreenPen);
	for (a=0; a<m_nextra; a++)
	{
		x1 = m_xVarb[a];
		y1 = m_yVarb[a];

		Data2Pixel(x1, y1, &xi1, &yi1);

		pDC->Ellipse(xi1-3,yi1-3,xi1+3,yi1+3);

		str.Format("%d",m_fixdnodes+a+1);
		pDC->TextOut(xi1,yi1,str);
	}

	// draw valid connections...
	pDC->SetTextColor(RGB(255,0,0)); // RED
	pDC->SelectObject(pRedPen);
	for (a=0; a<m_npts-1; a++)
	{
		if (a < m_fixdnodes)
		{
			x1 = m_xFixd[a];
			y1 = m_yFixd[a];
		}
		else
		{
			x1 = m_xVarb[a-m_fixdnodes];
			y1 = m_yVarb[a-m_fixdnodes];
		}

		Data2Pixel(x1, y1, &xi1, &yi1);
		
		for (b=a+1; b<m_fixdnodes + m_nextra; b++)
		{
			i = ConMapIndex(a,b);
			if (b < m_fixdnodes)
			{
				x2 = m_xFixd[b];
				y2 = m_yFixd[b];
			}
			else
			{
				x2 = m_xVarb[b-m_fixdnodes];
				y2 = m_yVarb[b-m_fixdnodes];
			}

			Data2Pixel(x2, y2, &xi2, &yi2);

			if (m_conmap[i]) // connection is enabled...
			{
				pDC->MoveTo(xi1, yi1);
				pDC->LineTo(xi2, yi2);
			}
		}
	}
}

void CSteinerGADlg::DrawFixdPoints(void) 
{
	int a;
	double x,y;
	int xi,yi;
	CString str;

	CWnd* pWnd = GetDlgItem(IDC_DRAWRING);
	CDC* pDC = pWnd->GetDC();
		
	CBrush Brush(RGB(255,255,255)); // white!
	CRect bx = m_box;
	pDC->FillRect(&bx, &Brush);

	// draw fixed points...
	pDC->SelectObject(pBluePen);
	pDC->SetTextColor(RGB(0,0,255)); // BLUE

	for (a=0; a<m_fixdnodes; a++)
	{
		x = m_xFixd[a];
		y = m_yFixd[a];

		Data2Pixel(x, y, &xi, &yi);

		pDC->Ellipse(xi-3,yi-3,xi+3,yi+3);

		str.Format("%d",a+1);
		pDC->TextOut(xi,yi,str);
	}
}

CString CSteinerGADlg::Mutate(CString critter) // mutation
{
	int num, pos, a; // a = dbg only
	double x, y, z;
	CString temp, orig, chr;
	CString dbg, str, changes; // for debug only
	TCHAR onechar;

	orig = critter;

	str.Format("-");
	for (a=0; a<m_ntot; a++)
	{
		changes += str;
	}
	x = (double)rand() / (double)RAND_MAX; // uniform random
	if (x < 0.0001) // mutate nodes area - Rare...
	{
		y = (double)rand() / (double)RAND_MAX; // uniform random
		num = (int)((double)(m_varbnodes+1)*y);
		if (num < 0 || num > m_varbnodes)
		{
			num = m_varbnodes;
		}
		if (num < 10)
		{
			temp.Format("0");
			strcpy(&onechar,temp);
			critter.SetAt(0,onechar);
			temp.Format("%d", num);
			strcpy(&onechar,temp);
			critter.SetAt(1,onechar);
			changes.SetAt(1,onechar);
		}
		else
		{
			temp.Format("%2d", num);
			strcpy(&onechar,temp);
			critter.SetAt(0,onechar);
			changes.SetAt(0,onechar);
		}
	}
	else if (x < 0.5) // mutate coordinates area
	{
		y = (double)rand() / (double)RAND_MAX;
		pos = 2 + (int)((double)(m_ndigs)*y); // position along string
		if (pos < 0 || pos > m_ntot-1) // error
		{
			pos = 2;
		}
		z = (double)rand() / (double)RAND_MAX;
		num = (int)(10.0*z); // digit 0-9
		temp.Format("%d", num);
		strcpy(&onechar,temp);
		critter.SetAt(pos,onechar);
		changes.SetAt(pos,onechar);
	}
	else // mutate connection bitmap area
	{
		y = (double)rand() / (double)RAND_MAX;
		pos = 2 + m_ndigs + (int)((double)(m_combs)*y); // position along string
		if (pos < 0 || pos > m_ntot-1) // error
		{
			pos = m_ndigs + 2;
		}

		chr = critter.Mid(pos,1);
		temp = (chr == "F") ? "T" : "F" ; // strict inversion here...
		strcpy(&onechar,temp);
		critter.SetAt(pos,onechar);
		changes.SetAt(pos,onechar);
	}

	return(critter);
}

void CSteinerGADlg::SortOrgs(void) 
{
	int a,b,ilarge,itemp;
	double ftemp;

	for (a=0; a<m_maxpop-1; a++) // sort the peaks by increasing fitness (so smallest first)
	{
		ilarge = a;
		for (b=a+1; b<m_maxpop; b++)
		{
			if (m_fitness[b] < m_fitness[ilarge])
				ilarge = b;
		}
		if (ilarge > a)
		{
			itemp = m_sortids[a];
			m_sortids[a] = m_sortids[ilarge];
			m_sortids[ilarge] = itemp;

			ftemp = m_fitness[a];
			m_fitness[a] = m_fitness[ilarge];
			m_fitness[ilarge] = ftemp;
		}
	}
}

void CSteinerGADlg::GetNorms(void) 
{
	CString str, critter;
	int iorg;
	double fitness, sum;
	double npop = (double)m_maxpop;
	m_popnorm = 0.0;
	m_minlgth = 2.0*m_death;
	m_maxlgth = 0.0;
	sum = 0.0;
	for (iorg=0; iorg<m_maxpop; iorg++) // for each organism, calculate its fitness......
	{
		fitness = m_fitness[m_sortids[iorg]];
		if (fitness < m_death)
		{
			sum += fitness;
			if (fitness > m_maxlgth)
			{
				m_maxlgth = fitness;
			}
		}
		if (fitness < m_minlgth)
			m_minlgth = fitness;
	}
	if (m_maxlgth > m_minlgth)
		m_popnorm = (npop*m_maxlgth - sum)/(m_maxlgth - m_minlgth);

	return;
}

int CSteinerGADlg::heybabe(void) // selects a population member for Mating ;-)
{
	double x, y, z;
	double partsum = 0.0;
	int iorg = -1;
	int a;

	x = (double)rand() / (double)RAND_MAX; // x = uniform Rand()

// normal way follows
	y = pow(x, m_bfactor)*m_popnorm; // so y = x^m_bfactor, *= m_popnorm

	for (a=m_maxpop-1; a>-1; a--) // start at least fit, go down to best fit...
	{
		if (m_fitness[a] < m_death)
 		{
			z = (m_maxlgth - m_fitness[a])/(m_maxlgth - m_minlgth);
			partsum += z;
			if (partsum >= y)
			{
				iorg = a;
				return(iorg);
			}
		}
	}

	// error - still here?  oh well, return best(0)...
	return(0);
}

void CSteinerGADlg::crossover(int boy, int girl, CString* son, CString* daughter)
{
	CString strBoy, strGirl, partial1, partial2, baby1, baby2, dbg;
	strBoy = m_pop.GetAt(m_sortids[boy]);
	strGirl = m_pop.GetAt(m_sortids[girl]);
	double x;
	int num;

	x = (double)rand() / (double)RAND_MAX;
	num = (int)((double)m_ntot*x); // pick x-over point

	partial1 = strBoy.Mid(0,num); // 1st chunk Boy...
	partial2 = strGirl.Mid(num, m_ntot-num); // last chunk Girl...
	baby1 = partial1 + partial2;

	*son = baby1;

	partial1 = strGirl.Mid(0,num); // 1st chunk Girl...
	partial2 = strBoy.Mid(num, m_ntot-num); // last chunk Boy...
	baby2 = partial1 + partial2;

	*daughter = baby2;

	return;
}

void CSteinerGADlg::OnCheckTarget() 
{
	m_target = !m_target;
	if (m_target)
	{
		AfxMessageBox("Switching to Specific Target (Kluge)");
		m_fixdnodes = 5;
		m_varbnodes = 4;

		Cleanup();
		Allocate();

		m_xFixd[0] = 350.0;
		m_yFixd[0] = 300.0;

		m_xFixd[1] = 650.0;
		m_yFixd[1] = 300.0;

		m_xFixd[2] = 200.0;
		m_yFixd[2] = 560.0;
		
		m_xFixd[3] = 800.0;
		m_yFixd[3] = 560.0;

		m_xFixd[4] = 500.0;
		m_yFixd[4] = 733.3;

	}
	UpdateData(FALSE);
}

void CSteinerGADlg::OnTargbmp() // response when you click the Target bitmap button
{
	OnCheckTarget();
}

void CSteinerGADlg::OnStartrun(void) 
{
	UpdateData(TRUE);

	CString str, critter, dbg;
	int a;

	str.Format("Parms: Nodes(fixd=%d,varb=%d), Gens(kill=%d,max=%d), Muts(%d/gen,%d/org) Pop=%d, B=%.3lf, Elite:%d",
		m_fixdnodes, m_varbnodes, m_killgens, m_maxgens, m_mutespergen, m_mutesperorg, m_maxpop,
		m_bfactor, m_elite);
	m_status = str;
	UpdateData(FALSE);

	// check for geom definition
	bool OK = FALSE;
	for (a=0; a<m_fixdnodes; a++) // if all coords 0, is FALSE, no-go (not OK)
	{
		if (m_xFixd[a] != 0.0 || m_yFixd[a] != 0.0)
			OK = TRUE;
	}

	if(!OK)
	{
		AfxMessageBox("You need to Define a Geometry first!  Click Geometry.");
		return;
	}

	for (a=0; a<m_combs; a++)
	{
		m_conmap[a] = FALSE;
	}
	for (a=0; a<m_npts; a++)
	{
		m_got[a] = FALSE;
	}

	m_running = TRUE;
	CWnd* ownbut = GetDlgItem(IDC_DRAWRING);
	GotoDlgCtrl(ownbut);

	Create();

	m_currentgen = 0;

	DoOneGen(m_currentgen);
}


long CSteinerGADlg::NextGen(UINT wParam,long lParam) 
{
	// part of allowing Windows Messages to interrupt a long simulation...
	if (m_currentgen < m_maxgens && m_running)
		DoOneGen(m_currentgen);
	return(0L);
}

long CSteinerGADlg::NextPlot(UINT wParam,long lParam)
{
	if (m_running)
		DoOnePlot();
	return(0L);
}

void CSteinerGADlg::DoOnePlot(void) // for run control
{
	UpdateWindow();
	m_statusrpt.Format("Gen#%d", m_currentgen);
	UpdateData(FALSE);

	if (!m_running)	// Esc, Q, X = eXit
	{
		AfxMessageBox("Plot History Display terminated by user.");
		return;
	}

	drawOne(m_critter, m_currentgen, 0);
	::Sleep(m_delay);

	PlotAbort();

	this->PostMessage(IDM_PLOTGEN,0,0);
	return;
}

void CSteinerGADlg::PlotAbort(void) // for run control
{
	// abort control
	MSG				m_peekmsg;

	while (::PeekMessage(&m_peekmsg,NULL,WM_KEYFIRST,WM_KEYLAST,PM_REMOVE))
	{
		if (m_peekmsg.message == WM_KEYDOWN)
		{
			if (m_peekmsg.wParam == 0x1B)	// ESC
				m_running = FALSE;
			else if (m_peekmsg.wParam == 0x58)	// X = eXit
				m_running = FALSE;
			else if (m_peekmsg.wParam == 0x51)	// Q = Quit
				m_running = FALSE;
		}
	}
}


void CSteinerGADlg::DoOneGen(int igen) // for run control
{
	CString str, critter, son, daughter, dbg;
	double x;
	int iorg, imutpop, imutorg, boy, girl, count;

	UpdateWindow();
	m_statusrpt.Format("Gen#%d", igen);
	UpdateData(FALSE);

	if (!m_running)	// Esc, Q, X = eXit
	{
		AfxMessageBox("Run terminated by user.");
		return;
	}

	dbg.Format("************* Starting Generation %d *************", igen);
	//TalkToMe(dbg,1);

	if (igen%m_killgens == 0) // kill population, start over...
	{
		Create();
	}

	// a star goes Nova; excess radiation causes some mutations...

	for (imutpop=0; imutpop<m_mutespergen; imutpop++)
	{
		x = (double)rand() / (double)RAND_MAX; // uniform Rand()
		iorg = (int)((double)m_maxpop*x); // so now a typical organism ID#...

		critter = m_pop.GetAt(iorg);

		for (imutorg=0; imutorg<m_mutesperorg; imutorg++)
		{
			critter = Mutate(critter);
		}

		m_pop.SetAt(iorg,critter); // this puts mutated organism back into population
	}

	for (iorg=0; iorg<m_maxpop; iorg++) // for each organism, calculate its fitness......
	{
		critter = m_pop.GetAt(iorg);
		m_fitness[iorg] = Fitness(critter);
		m_sortids[iorg] = iorg;
	}

	// sort the critters
	SortOrgs();

	// plot TOP ORGANISM(s)
	if (m_drawon)
	{
		for (iorg=0; iorg<1; iorg++) // for several organisms (only TOP here), get fitness
		{
			critter = m_pop.GetAt(m_sortids[iorg]);
			drawOne(critter, igen, iorg);
			::Sleep(m_delay);
		}
	}

	iorg = 0; // best
	critter = m_pop.GetAt(m_sortids[iorg]);

	// build the next generation as CStringArray m_temp, then replace current array(m_pop)
	
	m_temp.RemoveAll();

	// place the Elites;
	for (iorg=0; iorg<m_elite; iorg++) // 
	{
		critter = m_pop.GetAt(m_sortids[iorg]);
		m_temp.Add(critter);
	}

	// do breeding for next generation...

	// get norms
	GetNorms();

	count = m_elite;
	for (iorg=m_elite; iorg<m_maxpop; iorg++) // now the remaining population...
	{
		boy = heybabe();
		girl = heybabe();
		crossover(boy, girl, &son, &daughter);
	}

	m_pop.RemoveAll();
	for (iorg=0; iorg<m_temp.GetSize(); iorg++)
	{
		critter = m_temp.GetAt(iorg);
		m_pop.Add(critter);
	}

	TrapAbort();
	m_currentgen++;

	this->PostMessage(IDM_GENERATION,0,0);
	return;
}

void CSteinerGADlg::TrapAbort(void)
{
	// abort control
	MSG				m_peekmsg;
	CString critter;

	while (::PeekMessage(&m_peekmsg,NULL,WM_KEYFIRST,WM_KEYLAST,PM_REMOVE))
	{
		if (m_peekmsg.message == WM_KEYDOWN)
		{
			if (m_peekmsg.wParam == 0x1B)	// ESC
				m_running = FALSE;
			else if (m_peekmsg.wParam == 0x58)	// X = eXit
				m_running = FALSE;
			else if (m_peekmsg.wParam == 0x51)	// Q = Quit
				m_running = FALSE;
		}
	}

	if (!m_running)
	{
		AfxMessageBox("Run has been Terminated by user.");
		critter = m_pop.GetAt(0);
		drawOne(critter, m_currentgen, 0);
	}
}
```
