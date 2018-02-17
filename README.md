# Project 8051

Project ini menggunakan bahasa pemrograman **C** dengan menggunakan beberapa tools.
Tools yang digunakan adalah:

1. [SDCC (_Small Device C Compiler_)](http://sdcc.sourceforge.net)
2. [EdSim51](http://www.edsim51.com)

---

### Menggunakan SDCC (_Small Device C Compiler_)

Pertama, download dan install program SDCC.

Untuk menggunakan _compiler_ ini, kamu dapat menggunakan **CMD** pada Windows.
Kemudian menuju _path_ dimana program C disimpan.

example:
```
cd 8051-project\test
```
Setelah itu, kamu bisa memanggil `SDCC programkamu.c` maka akan bekerja dan menghasilkan beberapa file diantaranya adalah file **.asm**

example:
```
SDCC test.c
```

#### Mendapatkan file .hex

file **.hex** merupakan file yang bisa di upload kedalam _microcontroller 8051_ dengan menggunakan programer.
cara mendapatkanya adalah:
```
packihx test.ihx > test.hex
```

---

### Simulasi

Untuk melakukan simulasi, kamu bisa mengguakan [EdSim51](http://edsim51.com) dengan menggunakan bahasa _Assembly_ yang terdatap didalam file hasil _compile_ yang memiliki ekstensi **.asm**

