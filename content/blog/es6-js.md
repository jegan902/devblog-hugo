---
title: "Tổng Quan về ES6 trong JavaScript"
date: 2025-10-06
categories: ["javascript"]
tags: ["javascript", "es6", "ecmascript"]
author: "Nguyễn Ngọc Hưng"
readTime: "7 phút đọc"
image: "https://images.unsplash.com/photo-1518773553398-650c184e0bb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Khám phá các tính năng mới của ES6 (ECMAScript 2015) và cách chúng cải thiện trải nghiệm lập trình JavaScript."
---
# Tổng Quan về ES6 trong JavaScript
ES6, hay còn gọi là ECMAScript 2015, là một phiên bản quan trọng của ngôn ngữ lập trình JavaScript, mang đến nhiều tính năng mới giúp cải thiện trải nghiệm lập trình và làm cho mã nguồn trở nên rõ ràng hơn. Trong bài viết này, chúng ta sẽ khám phá các tính năng nổi bật của ES6 và cách sử dụng chúng trong phát triển ứng dụng JavaScript.
## 1. Let và Const
ES6 giới thiệu hai từ khóa mới để khai báo biến: let và const. Khác với ar, let có phạm vi khối (block scope) và const được sử dụng để khai báo hằng số (constant).
`javascript
let x = 10;
const y = 20;
x = 15; // Hợp lệ
y = 25; // Lỗi: không thể gán lại giá trị cho hằng số
`
## 2. Arrow Functions
Arrow functions cung cấp một cú pháp ngắn gọn để viết các hàm. Chúng cũng giữ ngữ cảnh của 	his từ phạm vi bên ngoài.
`javascript
const add = (a, b) => a + b;
console.log(add(5, 3)); // Kết quả: 8
const multiply = (a, b) => {
    return a * b;
};
console.log(multiply(5, 3)); // Kết quả: 15
`
## 3. Template Literals
Template literals cho phép bạn nhúng biểu thức vào chuỗi một cách dễ dàng bằng cách sử dụng dấu backtick (`  `) và ${}.
`javascript
const name = "Alice";
const greeting = Hello, !;
console.log(greeting); // Kết quả: Hello, Alice!
const a = 5;
const b = 10;
console.log(Tổng của  và  là .); // Kết quả: Tổng của 5 và 10 là 15.
`
## 4. Destructuring Assignment
Destructuring assignment cho phép bạn trích xuất giá trị từ mảng hoặc đối tượng và gán chúng vào các biến một cách dễ dàng.
`javascript
// Destructuring mảng
const [first, second] = [1, 2, 3];
console.log(first); // Kết quả: 1
console.log(second); // Kết quả: 2
// Destructuring đối tượng
const person = { name: "Bob", age: 30 };
const { name, age } = person;
console.log(name); // Kết quả: Bob
console.log(age); // Kết quả: 30
`
## 5. Classes
ES6 giới thiệu cú pháp lớp (class) để định nghĩa các đối tượng và kế thừa, làm cho mã nguồn trở nên rõ ràng và dễ hiểu hơn.
`javascript
class Animal {
    constructor(name) {
        this.name = name;
    }
    speak() {
        console.log(${this.name} makes a noise.);
    }
}
class Dog extends Animal {
    speak() {
        console.log(${this.name} barks.);
    }
}
const dog = new Dog("Rex");
dog.speak(); // Kết quả: Rex barks.
`
## 6. Promises
Promises cung cấp một cách để xử lý các tác vụ bất đồng bộ, giúp tránh hiện tượng "callback hell".
`javascript
const fetchData = () => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Dữ liệu đã được tải.");
        }, 2000);
    });
};
fetchData().then(data => console.log(data)); // Kết quả sau 2 giây: Dữ liệu đã được tải.
`
## Kết Luận
ES6 mang đến nhiều tính năng mới giúp cải thiện trải nghiệm lập trình JavaScript, làm cho mã nguồn trở nên rõ ràng và dễ bảo trì hơn. Bằng cách nắm vững các tính năng như let, const, arrow functions, template literals, destructuring, classes và promises, bạn có thể viết mã JavaScript hiệu quả và hiện đại hơn. Hãy tiếp tục khám phá và thực hành để nâng cao kỹ năng lập trình của bạn với ES6!
