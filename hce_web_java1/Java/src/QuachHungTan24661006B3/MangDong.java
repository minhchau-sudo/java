/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Buoi3;

import java.util.ArrayList;

/**
 *
 * @author MAY
 */
public class MangDong {
    /*
     Mang dong: La mang co the thay doi kich thuoc trong qua trinh chay chuong trinh
    ArrayList: tu dong tang/giam
    vi du: int a[]=new int[3];
     Them phan tu vao mang a thi loi, vi xin toi da chi co 3
    Giai phap la dung mang dong
    - Muon xai duoc ArrayList phai import thu vien
    import java.util.ArrayList;
    ArrayList<KDL> tenmang=new ArrayList<>();
    KDL: int, String,boolean, onject,.....
    De them phan tu vao mang thi dung: tenmang.add(pt)
    Lay phan: tenmang.get(vitri);
    Sua phan tu: tenmang.set(vitri,giatri)
    Xoa phan tu: tenmang.remove(vitri);//xoa theo index
    Xoa theo gia tri:tenmang.remove(Integer.valuOf(giatri))
    Kich thuoc: tenmang.size();
    */
    public static void main(String[] args) {
        ArrayList<Integer> list=new ArrayList<>();
        // them phan tu vao mang
        list.add(5);
        list.add(10);
        list.add(20);
//        sua
        list.set(1, 30);
//        xoa
        list.remove(0);
//        duyet
        for(int x:list)
        {
            System.out.println(x);
        }
    }
}
