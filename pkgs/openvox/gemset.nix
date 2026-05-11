{
  base64 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yx9yn47a8lkfcjmigk79fykxvr80r4m1i35q82sxzynpbm7lcr7";
      type = "gem";
    };
    version = "0.3.0";
  };
  benchmark = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0v1337j39w1z7x9zs4q7ag0nfv4vs4xlsjx2la0wpv8s6hig2pa6";
      type = "gem";
    };
    version = "0.5.0";
  };
  concurrent-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aymcakhzl83k77g2f2krz07bg1cbafbcd2ghvwr4lky3rz86mkb";
      type = "gem";
    };
    version = "1.3.6";
  };
  deep_merge = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fjn4civid68a3zxnbgyjj6krs3l30dy8b4djpg6fpzrsyix7kl3";
      type = "gem";
    };
    version = "1.2.2";
  };
  fast_gettext = {
    dependencies = ["prime" "racc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1n7gcq1y893ijck42nm0wqxbqc36smmkd49fzcgc63avjkv35ig8";
      type = "gem";
    };
    version = "4.1.1";
  };
  fiddle = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vifygrkw22gcd4wzh8gc4pv6h1zpk6kll6mmprrf5174wvfxa3z";
      type = "gem";
    };
    version = "1.1.8";
  };
  forwardable = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f78rjpnhm4lgp1qzadnr6kr02b6afh1lvy7w607k4qjk3641kgi";
      type = "gem";
    };
    version = "1.4.0";
  };
  getoptlong = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "198vy9dxyzibqdbw9jg8p2ljj9iknkyiqlyl229vz55rjxrz08zx";
      type = "gem";
    };
    version = "0.2.1";
  };
  hocon = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "106dmzsl1bxkqw5xaif012nwwfr3k9wff32cqc77ibjngknj6477";
      type = "gem";
    };
    version = "1.4.0";
  };
  locale = {
    dependencies = ["fiddle"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x1fnf4knvyzb9br6ja7b1nvy0860nax0i8rx4ljrnvbmbl06s0w";
      type = "gem";
    };
    version = "2.1.5";
  };
  logger = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00q2zznygpbls8asz5knjvvj2brr3ghmqxgr83xnrdj4rk3xwvhr";
      type = "gem";
    };
    version = "1.7.0";
  };
  openfact = {
    dependencies = ["base64" "benchmark" "hocon" "logger" "ostruct" "thor" "tsort"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "079w2bzwqz32fpba4a8xsbkphsv80jxx42d0ka3k5lf1x0iqvfwi";
      type = "gem";
    };
    version = "5.6.0";
  };
  openvox = {
    dependencies = ["base64" "benchmark" "concurrent-ruby" "deep_merge" "fast_gettext" "fiddle" "getoptlong" "locale" "openfact" "ostruct" "puppet-resource_api" "racc" "scanf" "semantic_puppet"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "14c6bqfmmqp43z4jpv21g1m5amn3m0anyz3w6zz3v3ci0ma32b7h";
      type = "gem";
    };
    version = "8.26.2";
  };
  ostruct = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "04nrir9wdpc4izqwqbysxyly8y7hsfr4fsv69rw91lfi9d5fv8lm";
      type = "gem";
    };
    version = "0.6.3";
  };
  prime = {
    dependencies = ["forwardable" "singleton"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pi2g9sd9ssyrpvbybh4skrgzqrv0rrd1q7ylgrsd519gjzmwxad";
      type = "gem";
    };
    version = "0.1.4";
  };
  puppet-resource_api = {
    dependencies = ["hocon"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1i6rdwkc75h4py7cx66gkc42mdg5bfwhdxw713dcpy75snszqja6";
      type = "gem";
    };
    version = "2.0.0";
  };
  racc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0byn0c9nkahsl93y9ln5bysq4j31q8xkf2ws42swighxd4lnjzsa";
      type = "gem";
    };
    version = "1.8.1";
  };
  scanf = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "000vxsci3zq8m1wl7mmppj7sarznrqlm6v2x2hdfmbxcwpvvfgak";
      type = "gem";
    };
    version = "1.0.0";
  };
  semantic_puppet = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15ksbizvakfx0zfdgjbh34hqnrnkjj47m4kbnsg58mpqsx45pzqm";
      type = "gem";
    };
    version = "1.1.1";
  };
  singleton = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y2pc7lr979pab5n5lvk3jhsi99fhskl5f2s6004v8sabz51psl3";
      type = "gem";
    };
    version = "0.3.0";
  };
  thor = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0wsy88vg2mazl039392hqrcwvs5nb9kq8jhhrrclir2px1gybag3";
      type = "gem";
    };
    version = "1.5.0";
  };
  tsort = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17q8h020dw73wjmql50lqw5ddsngg67jfw8ncjv476l5ys9sfl4n";
      type = "gem";
    };
    version = "0.2.0";
  };
}
