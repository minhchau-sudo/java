package QuachHungTan24661006B3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class DanhSachDong {

    static ArrayList<Integer> list = new ArrayList<>();
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        int chon;
        do {
            menu();
            System.out.print("Moi ban chon: ");
            chon = sc.nextInt();

            switch (chon) {
                case 1:
                    themPhanTu();
                    break;

                case 2:
                    hienThi();
                    break;

                case 3:
                    xoaSoChan();
                    break;

                case 4:
                    timMax();
                    break;

                case 5:
                    kiemTraTonTai();
                    break;

                case 6:
                    Collections.sort(list);
                    System.out.println("Da sap xep tang dan!");
                    break;

                case 7:
                    Collections.sort(list, Collections.reverseOrder());
                    System.out.println("Da sap xep giam dan!");
                    break;

                case 8:
                    xoaTheoViTri();
                    break;

                case 9:
                    capNhat();
                    break;

                case 10:
                    System.out.println("Thoat chuong trinh!");
                    break;

                default:
                    System.out.println("Lua chon khong hop le!");
            }

        } while (chon != 10);
    }

    public static void menu() {
        System.out.println("\n===== MENU =====");
        System.out.println("1- Them phan tu");
        System.out.println("2- Hien thi danh sach");
        System.out.println("3- Xoa so chan");
        System.out.println("4- Tim so lon nhat");
        System.out.println("5- Kiem tra ton tai");
        System.out.println("6- Sap xep tang dan");
        System.out.println("7- Sap xep giam dan");
        System.out.println("8- Xoa theo vi tri");
        System.out.println("9- Cap nhat gia tri");
        System.out.println("10- Thoat");
    }

    public static void themPhanTu() {
        System.out.print("Nhap so luong: ");
        int n = sc.nextInt();
        for (int i = 0; i < n; i++) {
            System.out.print("Nhap phan tu thu " + (i + 1) + ": ");
            list.add(sc.nextInt());
        }
    }


    public static void hienThi() {
        if (list.isEmpty()) {
            System.out.println("Danh sach rong!");
            return;
        }
        System.out.println("Danh sach: ");
        for (int x : list) {
            System.out.print(x + " ");
        }
        System.out.println();
    }

    public static void xoaSoChan() {
        list.removeIf(x -> x % 2 == 0);
        System.out.println("Da xoa cac so chan!");
    }

    public static void timMax() {
        if (list.isEmpty()) {
            System.out.println("Danh sach rong!");
            return;
        }
        int max = list.get(0);
        for (int x : list) {
            if (x > max) {
                max = x;
            }
        }
        System.out.println("So lon nhat la: " + max);
    }

    public static void kiemTraTonTai() {
        System.out.print("Nhap so can tim: ");
        int x = sc.nextInt();
        if (list.contains(x)) {
            System.out.println("Co ton tai " + x);
        } else {
            System.out.println("Khong ton tai " + x);
        }
    }

    public static void xoaTheoViTri() {
        System.out.print("Nhap vi tri can xoa: ");
        int vt = sc.nextInt();
        if (vt >= 0 && vt < list.size()) {
            list.remove(vt);
            System.out.println("Da xoa!");
        } else {
            System.out.println("Vi tri khong hop le!");
        }
    }

    public static void capNhat() {
        System.out.print("Nhap vi tri: ");
        int vt = sc.nextInt();
        if (vt >= 0 && vt < list.size()) {
            System.out.print("Nhap gia tri moi: ");
            int val = sc.nextInt();
            list.set(vt, val);
            System.out.println("Da cap nhat!");
        } else {
            System.out.println("Vi tri khong hop le!");
        }
    }
}