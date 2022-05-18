
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/legach/keyboard-layout-clear/releases/download/v1.0.0.0/KeyboardLayoutClear.exe' 

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'KeyboardLayoutClear'
  FileFullPath  = "$toolsDir\KeyboardLayoutClear.exe"

  checksum      = '4B791F359751E5A5C731881204A4B555C09EF6B5F3C6651B5869A22647A9C86F'
  checksumType  = 'sha256'
  checksum64    = '4B791F359751E5A5C731881204A4B555C09EF6B5F3C6651B5869A22647A9C86F'
  checksumType64= 'sha256'
}

Get-ChocolateyWebFile @packageArgs
