## Sering digunakan
<p align="center">
<img src="https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white" /><img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white"/><img src="https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white"/><img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"/><img src="https://img.shields.io/badge/Stack_Overflow-FE7A16?style=for-the-badge&logo=stack-overflow&logoColor=white"/><img src="https://img.shields.io/badge/PHP-777BB4?style=for-the-badge&logo=php&logoColor=white"/><img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white"/><img src="https://img.shields.io/badge/Codeigniter-EF4223?style=for-the-badge&logo=codeigniter&logoColor=white"/></p>

<!-- PROJECT LOGO -->
<br />
<p align="center">
<img src= "https://user-images.githubusercontent.com/59318022/119240343-1e605a00-bb79-11eb-9c1f-06325bcb2adb.png" width="400" >
</p>

## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)
#### Project ini sebagai syarat penilaian tugas akhir semester pada mata kuliah web programming II Universitas Nusa Mandiri

Nilsine caffe merupakan nama dari sebuah project website terdahulu yang masih menggunakan web native yang sekarang di implementasikan menggunakan framework php yaitu codeigniter.

##### Kenapa menggunakan framework?
framework lebih cepat karena programmer tidak perlu membuat kode dari awal. Programmer hanya perlu memanfaatkan apa yang sudah disediakan oleh framework. Tanpa framework, programmer harus membuat semuanya dari awal sehingga ini akan memakan waktu. penulisan code pun lebih efesien dan terasa singkat
- ###### Mengkoneksikan database menggunakan codeigniter
```
 $this->load->database('websites');
 $query = $this->db->get('sites');
 foreach ($query->result() as $row)
 {
 print $row->url
 }
```
- ###### Mengkoneksikan database Tanpa codeigniter
```
$connection = mysql_connect("localhost","fred","12345");
mysql_select_db("websites", $connection);
$result = mysql_query ("SELECT * FROM sites", $connection);
while ($row = mysql_fetch_array($result, MYSQL_NUM))
{
 foreach ($row as $attribute)
 print "{$attribute[1]} ";
 }
```

##### Penerapan konsep Extention Modular
HMVC sangat membantu ketika aplikasi memiliki banyak modules, sehingga anda dapat mengelompokkan masing – masing module itu menjadi beberapa folder yang namanya disesuaikan dengan modules, sehingga proses management filenya seperti model, view, dan controller dapat lebih mudah, karena terbagi menjadi folder berdasarkan modules. penerapan sistem (Hierarchical-Model-View-Controller) HMVC pada website yang kami buat dapat membantu untuk menghindari Source code yang menumpuk dan dapat membantu kami untuk memasang kembali source code ketika ingin digunakan di project selanjutnya

***

### Fitur :
##### administrasi
 * login / logout
 * menambahkan kategori serta produk
 * menambahkan diskon transaksi
 * membatalkan pesanan / konfrimasi pesanan
 * chat review
 ##### Pengguna
* login / logout
* registrasi
* cart
* menambahkan kode kupon untuk diskon
* chat review prodak
* pembayaran via transfer

###### Dari kami mahasiswa Universitas Nusa Mandiri
