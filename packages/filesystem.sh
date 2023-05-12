mkdir -pv ./{etc,var} ./usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i ./$i
done

ln -s /usr/lib ./usr/lib64
ln -s /usr/lib64 ./lib64

mkdir -pv ./{dev,proc,sys,run,tmp}
mkdir ./home
mkdir ./root
