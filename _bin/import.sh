ruby -rubygems -e 'require "jekyll-import";
    JekyllImport::Importers::MT.run({
      "engine"   => "postgres", # "postgres" is also supported
      "dbname"   => "mt",
      "user"     => "www",
      "password" => "imok00",
      "host"     => "localhost",
      "blog_id"   => 2,  # Set to specific ID to iimport just one blog
      "categories" => false, # Set to false to not save categories to front matter
      "src_encoding" => "UTF-8",
      "dest_encoding" => "UTF-8",
      "comments" => false
    })'
