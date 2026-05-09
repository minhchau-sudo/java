/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Buoi3;

/**
 *
 * @author MAY
 */
public class MangTinh {
    /*
    1- Mang Tinh:
    la tap hop nhieu phan tu cung kieu du lieu, duoc luu lien tiep trong bo nho
    B1:Khai bao mang:
    kieudulieu[]tenmang
    vi du:
    int[]a;
    String[]arrr;
    B2: Khoi tao mang
        Cach1: Khai bao +cap phat thi phai co new
        kdl[] tenmang=new kdl[dodaimang];
        vi du:
        int[]a=new int[5];
        Cach 2: Khoi tao san gia tri
        kdl[] tenmang={giatri1, giatri2....}
        int []a={1,2,3,4,5};
    Truy cap phan tu cua mang
    - dua vao vi tri(index)
    - Mang bat dau vi tri thu 0
    - Truy cap phan tu cua mang:tenmang[vitri];
    - Gan phan tu cho mang: tenmang[vitri]=giatri;
    vi du: a[5]=6;
    Duyet qua mang dung vong lap: for, forech
    for(kdl tenbien:mang)
    Luu y:
    mang co kich thuoc co dinh(khong thay doi duoc)
    Chi chua 1 kieu du lieu
    Chi so bat dau la 0
    */
    public static void main(String[] args) {
        int [] a={2,4,6,8,9};
        //in ra mang
        for(int i=0;i<a.length;i++)
        {
            System.out.println("a["+a[i]+"]");
        }
        for(int x:a)
        {
            System.out.println(x);
        }
    }
}
