{ lib, buildPythonPackage, fetchPypi
, pbr, ws4py, python-dateutil, cryptography
, requests, requests-unixsocket, requests-toolbelt, requests-mock }:

buildPythonPackage rec {
  pname = "pylxd";
  version = "2.2.10";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0apzvqa6wavn4b7ajj8xdvrd76dg8a5fr7kjv77mymsaqpy1a54v";
  };

  propagatedBuildInputs = [
    pbr ws4py python-dateutil cryptography
    requests requests-unixsocket requests-toolbelt requests-mock
  ];

  doCheck = false;

  meta = with lib; {
    description = "A Python library for interacting with the LXD REST API";
  };
}
