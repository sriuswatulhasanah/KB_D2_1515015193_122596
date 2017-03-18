domains 
 pelajaran, nama, nilai = symbol 
predicates 
 nondeterm mata_kuliah(pelajaran,nama,nilai) 
 
clauses
 mata_kuliah(intelejensi_buatan,irfan,a). % matakuliah intelejensi_buatan diambil oleh irfan dengan nilai a.
 mata_kuliah(intelejensi_buatan,komeng,d).  % matakuliah intelejensi_buatan diambil oleh komeng dengan nilai d.
 mata_kuliah(intelejensi_buatan,dati,c).  % matakuliah intelejensi_buatan diambil oleh dati dengan nilai c.
 mata_kuliah(intelejensi_buatan,fatima,b).  % matakuliah intelejensi_buatan diambil oleh fatimah dengan nilai b.
 mata_kuliah(intelejensi_buatan,maspion,c).  % matakuliah intelejensi_buatan diambil oleh maspion dengan nilai c.
 mata_kuliah(pde,ricky,e).  % matakuliah intelejensi_buatan diambil oleh ricky dengan nilai e.
 mata_kuliah(pde,embang,a).  % matakuliah intelejensi_buatan diambil oleh embang dengan nilai a.
 mata_kuliah(pde,salmin,d).  % matakuliah intelejensi_buatan diambil oleh salmin dengan nilai d.
 mata_kuliah(pde,vina,b).  % matakuliah intelejensi_buatan diambil oleh vina dengan nilai b.
 mata_kuliah(pde,sondang,c).  % matakuliah intelejensi_buatan diambil oleh sodang dengan nilai c.
 mata_kuliah(so,pamuji,d).  % matakuliah intelejensi_buatan diambil oleh pamuji dengan nilai d.
 mata_kuliah(so,luki,e).  % matakuliah intelejensi_buatan diambil oleh luki dengan nilai e.
 mata_kuliah(so,sadek,b).  % matakuliah intelejensi_buatan diambil oleh sadek dengan nilai b.
 mata_kuliah(so,yusida,a).  % matakuliah intelejensi_buatan diambil oleh yusida dengan nilai a.
 mata_kuliah(so,eka,a).  % matakuliah intelejensi_buatan diambil oleh eka dengan nilai a.
 
goal
mata_kuliah(intelejensi_buatan,Nama,_);nl, % disini akan menampilkan hasil siapa saja yang mengambil mata_kuliah intelejensi_buatan.
mata_kuliah(_,Nama_mahasiswa_yang_Tidak_Lulus,d); mata_kuliah(_,Nama_mahasiswa_yang_Tidak_Lulus,e);nl, % akan menampilkan nama mahasiswa yang tidak lulus, dengan kata kunci apabila mahasiswa mendapatkan nilai d dan e maka mahasiswa tersebut tidak lulus. 
mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,a); mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,b); mata_kuliah(_,Nama_mahasiswa_Yang_Lulus,c);nl, % menampilkan mahasiswa yang lulus nilai matakuliah yang diambil dengan kata kunci nilai akhirnya yaitu a, b dan c.
mata_kuliah(Pelajaran,_,_);nl, % menampilkan nama - nama matakuliah.
mata_kuliah(_,Nama,_). % menampilkan semua nama mahasiswa.
  