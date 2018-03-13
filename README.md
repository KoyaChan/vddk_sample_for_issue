# vddk_sample_for_issue
vixDiskLibSample.cpp から、DoInfo()を実行するコードのみ残して、あとは #ifdef REMAIN_OTHER_THAN_DOINFOでコメントアウトしたもの。

### 実行方法
doc\sample\Releaseの下で、<BR>
getinfo.bat に設定(LIBDIRは、binの親のパスまで)、setpath.batにvddkのbinのパスを設定し、<BR>
```
> setpath
> getinfo <vCenterのIP> <ユーザ> <パスワード>
```

