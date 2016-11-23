{ mkDerivation, attoparsec, base, derive, mtl, mtl-compat
, old-locale, quickcheck-instances, semigroups, stdenv, tasty
, tasty-hunit, tasty-quickcheck, text, time, transformers-compat
}:
mkDerivation {
  pname = "cron";
  version = "0.4.1.2";
  src = ./.;
  libraryHaskellDepends = [
    attoparsec base mtl mtl-compat old-locale semigroups text time
  ];
  testHaskellDepends = [
    attoparsec base derive quickcheck-instances semigroups tasty
    tasty-hunit tasty-quickcheck text time transformers-compat
  ];
  configureFlags = ["--disable-optimization"]; # FIXME
  homepage = "http://github.com/michaelxavier/cron";
  description = "Cron datatypes and Attoparsec parser";
  license = stdenv.lib.licenses.mit;
}
