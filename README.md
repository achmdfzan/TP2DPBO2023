# TP2DPBO2023

> Saya Achmad Fauzam NIM 2108061 mengerjakan soal Tugas Praktikum 2
dalam mata kuliah Desain dan Pemrograman Berorientasi Objek
untuk keberkahanNya maka saya tidak melakukan kecurangan
seperti yang telah dispesifikasikan. Aamiin.

## Program yang dibuat merupakan program database video game
User dapat login/register sebagai developer lalu dapat melihat list game yang dibuat oleh developer tersebut.
User juga dapat melihat list developer lain yang telah melakukan registrasi pada aplikasi.

## Class Diagram
![image](https://user-images.githubusercontent.com/91662639/232237431-c8ec2f7b-2ccc-4bd5-abe2-ce655e0bb15c.png)

## Video demo aplikasi
https://user-images.githubusercontent.com/91662639/232234434-37216e1f-68f8-4a9c-b815-4edd8ce894ec.mp4

## Terdapat 2 tabel pada database yaitu:
**Developer**
- dev_id
- email
- password
- image

**Game**
- game_id
- dev_id
- nama
- genre
- platform
- image

## Fitur-fitur tambahan
- Data developer dan data game ditampilkan menggunakan JPanel pada file yang terpisah dari frame.
- Data yang ditampilkan berbeda untuk setiap akun.
- User dapat melihat dan mengubah data pribadi.
- User dapat melakukan logout.
- User dapat menambah, mengubah, dan menghapus game yang memiliki dev_id yang sama.
- User tidak dapat membuat/mengubah akun developer jika sudah terdapat email yang sama pada akun lain.
- User tidak dapat registrasi jika masih ada data yang kosong.
