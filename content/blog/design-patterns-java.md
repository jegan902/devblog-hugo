---
title: "Các mẫu thiết kế phổ biến trong Java"
date: 2025-10-06
categories: ["java"]
tags: ["java", "design patterns", "oop"]
author: "Nguyễn Ngọc Hưng"
readTime: "8 phút đọc"
image: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Khám phá các mẫu thiết kế (design patterns) phổ biến trong Java và cách áp dụng chúng để xây dựng các ứng dụng hiệu quả và dễ bảo trì."
---
---
# Các mẫu thiết kế phổ biến trong Java
Mẫu thiết kế (design patterns) là các giải pháp tái sử dụng cho các vấn đề phổ biến trong phát triển phần mềm. Chúng giúp cải thiện cấu trúc và tổ chức mã nguồn, làm cho ứng dụng dễ bảo trì và mở rộng hơn. Trong bài viết này, chúng ta sẽ khám phá một số mẫu thiết kế phổ biến trong Java và cách áp dụng chúng trong lập trình hướng đối tượng (OOP).
## 1. Singleton Pattern
Singleton là một mẫu thiết kế đảm bảo rằng một lớp chỉ có một thể hiện duy nhất và cung cấp một điểm truy cập toàn cục đến thể hiện đó. Điều này hữu ích khi bạn cần kiểm soát truy cập đến tài nguyên chung, như kết nối cơ sở dữ liệu hoặc cấu hình ứng dụng.
`java
public class Singleton {
    private static Singleton instance;

    private Singleton() {
        // Constructor riêng tư để ngăn chặn tạo thể hiện bên ngoài
    }

    public static Singleton getInstance() {
        if (instance == null) {
            instance = new Singleton();
        }
        return instance;
    }
}
`
## 2. Factory Pattern
`java
public class ShapeFactory {
    public static Shape getShape(String type) {
        if (type.equals("circle")) {
            return new Circle();
        } else if (type.equals("rectangle")) {
            return new Rectangle();
        }
        return null;
    }
}
`
Factory Pattern cung cấp một phương thức để tạo các đối tượng mà không cần chỉ định lớp cụ thể của chúng. Điều này giúp giảm sự phụ thuộc giữa các lớp và làm cho mã nguồn dễ mở rộng hơn.
## 3. Observer Pattern
Observer Pattern định nghĩa một mối quan hệ một-nhiều giữa các đối tượng, cho phép một đối tượng (subject) thông báo cho nhiều đối tượng khác (observers) khi có sự thay đổi trạng thái. Mẫu thiết kế này thường được sử dụng trong các hệ thống sự kiện và giao diện người dùng.
`java
public interface Observer {
    void update(String message);
}
public class Subject {
    private List<Observer> observers = new ArrayList<>();

    public void attach(Observer observer) {
        observers.add(observer);
    }

    public void notifyObservers(String message) {
        for (Observer observer : observers) {
            observer.update(message);
        }
    }
}
public class ConcreteObserver implements Observer {
    private String name;

    public ConcreteObserver(String name) {
        this.name = name;
    }

    @Override
    public void update(String message) {
        System.out.println(name + " received: " + message);
    }
}
`
## 4. Strategy Pattern
Strategy Pattern định nghĩa một họ các thuật toán, đóng gói từng thuật toán và làm cho chúng có thể thay thế lẫn nhau. Mẫu thiết kế này giúp tách biệt thuật toán khỏi ngữ cảnh sử dụng, làm cho mã nguồn dễ bảo trì và mở rộng.
`java
public interface Strategy {
    int execute(int a, int b);
}
public class Addition implements Strategy {
    @Override
    public int execute(int a, int b) {
        return a + b;
    }
}
public class Subtraction implements Strategy {
    @Override
    public int execute(int a, int b) {
        return a - b;
    }
}
public class Context {
    private Strategy strategy;

    public Context(Strategy strategy) {
        this.strategy = strategy;
    }

    public int executeStrategy(int a, int b) {
        return strategy.execute(a, b);
    }
}
// Sử dụng Strategy Pattern
Context context = new Context(new Addition());
int result = context.executeStrategy(5, 3); // Kết quả: 8
context = new Context(new Subtraction());
result = context.executeStrategy(5, 3); // Kết quả: 2
`
## Kết luận
Các mẫu thiết kế là công cụ quan trọng giúp cải thiện cấu trúc và tổ chức mã nguồn trong phát triển phần mềm. Bằng cách hiểu và áp dụng các mẫu thiết kế phổ biến như Singleton, Factory, Observer và Strategy, bạn có thể xây dựng các ứng dụng Java hiệu quả, dễ bảo trì và mở rộng. Hãy tiếp tục khám phá và thực hành để nắm vững kiến thức về design patterns trong Java!
