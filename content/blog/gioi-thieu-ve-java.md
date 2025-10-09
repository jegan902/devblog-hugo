---
title: "Giới thiệu về Java và lập trình hướng đối tượng"
date: 2025-10-04
categories: ["java"]
tags: ["java", "oop", "cơ bản"]
author: "Nguyễn Ngọc Hưng"
readTime: "5 phút đọc"
image: "https://images.unsplash.com/photo-1517077304055-6e89abbf09b0?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu những khái niệm cơ bản về Java và các nguyên lý lập trình hướng đối tượng trong Java."
---

# Giới thiệu về Java và lập trình hướng đối tượng

Tìm hiểu những khái niệm cơ bản về Java và các nguyên lý lập trình hướng đối tượng trong Java.

## Java là gì?

Java là một ngôn ngữ lập trình đa năng, thuộc nhóm ngôn ngữ hướng đối tượng, được sử dụng rộng rãi trong phát triển ứng dụng web, ứng dụng doanh nghiệp, ứng dụng di động (Android), và nhiều lĩnh vực khác. Một số đặc điểm chính của Java bao gồm:
- **Đa nền tảng**: Nhờ JVM, code Java có thể chạy trên Windows, Linux, macOS, v.v.
- **Định hướng đối tượng**: Hỗ trợ các khái niệm như class, object, inheritance, polymorphism.
- **Quản lý bộ nhớ tự động**: Sử dụng Garbage Collection để giải phóng bộ nhớ.

## Lập trình hướng đối tượng (OOP) trong Java

Lập trình hướng đối tượng là một phương pháp lập trình dựa trên các đối tượng, nơi dữ liệu và hành vi được đóng gói trong các thực thể gọi là class. Java triển khai bốn nguyên lý cốt lõi của OOP:

1. **Encapsulation (Đóng gói)**:
   - Đóng gói dữ liệu và phương thức trong một class, chỉ cho phép truy cập thông qua các phương thức công khai (getter/setter).
   - Ví dụ:
     `java
     public class Person {
         private String name;
         private int age;

         public String getName() {
             return name;
         }

         public void setName(String name) {
             this.name = name;
         }
     }
        `
2. **Inheritance (Kế thừa)**:
    - Cho phép một class kế thừa các
        thuộc tính và phương thức từ một class khác, giúp tái sử dụng mã nguồn.
    - Ví dụ:
      `java
      public class Animal {
          public void eat() {
              System.out.println("This animal eats food.");
          }
      }

      public class Dog extends Animal {
          public void bark() {
              System.out.println("The dog barks.");
          }
      }
      `
3. **Polymorphism (Đa hình)**:
    - Cho phép các đối tượng của các class khác nhau được xử lý thông qua cùng một giao diện.
    - Ví dụ:
      `java
      public class Cat extends Animal {
            public void meow() {
                 System.out.println("The cat meows.");
            }
      }
    
      public class Main {
            public static void main(String[] args) {
                 Animal myDog = new Dog();
                 Animal myCat = new Cat();
                 myDog.eat(); // This animal eats food.
                 myCat.eat(); // This animal eats food.
            }
      }
      `
4. **Abstraction (Trừu tượng)**:
    - Tạo ra các class trừu tượng và giao diện để định nghĩa các hành
        vi mà không cần triển khai chi tiết.
    - Ví dụ:
      `java
      public abstract class Shape {
          abstract void draw();
      }

      public class Circle extends Shape {
          void draw() {
              System.out.println("Drawing a circle.");
          }
      }
      `   
    Lợi ích của OOP trong Java
        - Tái sử dụng code: Sử dụng kế thừa và đa hình để giảm lặp code.
        - Dễ bảo trì: Đóng gói giúp tách biệt logic, dễ dàng sửa đổi mà không ảnh hưởng phần khác.
        - Mô phỏng thế giới thực: Các đối tượng đại diện cho các thực thể trong thực tế (ví dụ: Person, Car).
    Lưu ý khi sử dụng
        - Hiểu rõ các nguyên lý OOP để áp dụng đúng cách.
        - Tránh lạm dụng kế thừa, ưu tiên sử dụng composition khi phù hợp.
        - Sử dụng các thiết kế mẫu (design patterns) để giải quyết các vấn đề phổ biến trong OOP.
    Thực hành
        Hãy thử viết một chương trình Java đơn giản với class Student có các thuộc tính như name, age, và 
        phương thức displayInfo(). Sau đó, tạo một class GraduateStudent kế thừa từ Student và thêm thuộc 
        tính riêng như graduationYear.
    Kết luận
        Java là một ngôn ngữ lập trình mạnh mẽ với khả năng đa nền tảng và hỗ trợ lập trình hướng đối tượng. Việc nắm vững các khái niệm cơ bản về Java và OOP sẽ giúp bạn xây dựng các ứng dụng hiệu quả và dễ bảo trì. Hãy tiếp tục khám phá và thực hành để trở thành một lập trình viên Java thành công!   
