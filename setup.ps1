# setup.ps1
# Đặt encoding UTF-8 để hỗ trợ tiếng Việt
$PSDefaultParameterValues['Out-File:Encoding'] = 'utf8'

# Tạo thư mục
New-Item -ItemType Directory -Force -Path `
    archetypes, `
    content\blog, `
    data, `
    layouts\_default, `
    layouts\partials, `
    layouts\shortcodes, `
    layouts\about, `
    layouts\contact, `
    static\css, `
    static\img, `
    static\js, `
    .github\workflows

# archetypes/blog.md
Set-Content -Path archetypes/blog.md -Value @"
---
title: "{{ replace .Name `"-`" `" `" | title }}"
date: {{ .Date }}
categories: []
tags: []
author: "Nguyễn Văn A"
readTime: "5 phút đọc"
image: ""
excerpt: ""
---
"@

# config.toml
Set-Content -Path config.toml -Value @"
baseURL = "https://YOUR_USERNAME.github.io/devblog-hugo/"
languageCode = "vi-VN"
title = "DevBlog"
theme = "hugo-blog-awesome"

[params]
  author = "Nguyễn Văn A"
  description = "Chia sẻ kiến thức về lập trình Java và JavaScript."
  goToTop = true

  [[params.socialIcons]]
    name = "github"
    url = "https://github.com"
  [[params.socialIcons]]
    name = "linkedin"
    url = "https://linkedin.com"
  [[params.socialIcons]]
    name = "email"
    url = "mailto:contact@example.com"

[menu]
  [[menu.main]]
    identifier = "home"
    name = "Trang chủ"
    url = "/"
    weight = 1
  [[menu.main]]
    identifier = "blog"
    name = "Blog"
    url = "/blog/"
    weight = 2
  [[menu.main]]
    identifier = "about"
    name = "Giới thiệu"
    url = "/about/"
    weight = 3
  [[menu.main]]
    identifier = "contact"
    name = "Liên hệ"
    url = "/contact/"
    weight = 4
"@

# content/_index.md
Set-Content -Path content/_index.md -Value @"
---
title: "Chào mừng đến với DevBlog"
---
Chào mừng bạn đến với DevBlog, nơi chia sẻ kiến thức về lập trình Java và JavaScript. Khám phá các bài viết chi tiết từ cơ bản đến nâng cao.
"@

# content/about.md
Set-Content -Path content/about.md -Value @"
---
title: "Giới thiệu"
layout: "about"
---
{{ with site.Data.profile }}
## VỀ TÁC GIẢ
{{ .bio }}

### Thông tin
- **Vị trí**: {{ .location }}
- **Email**: {{ .email }}
- **Công việc**: {{ .title }}
{{ end }}
"@

# content/contact.md
Set-Content -Path content/contact.md -Value @"
---
title: "Liên hệ"
layout: "contact"
---
Hãy gửi tin nhắn nếu bạn có câu hỏi hoặc muốn hợp tác!
"@

# content/blog/gioi-thieu-ve-java.md
Set-Content -Path content/blog/gioi-thieu-ve-java.md -Value @"
---
title: "Giới thiệu về Java và lập trình hướng đối tượng"
date: 2025-10-04T15:00:00+07:00
categories: ["Java"]
tags: ["java", "oop", "cơ bản"]
author: "Nguyễn Văn A"
readTime: "5 phút đọc"
image: "https://images.unsplash.com/photo-1517077304055-6e89abbf09b0?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu những khái niệm cơ bản về Java và các nguyên lý lập trình hướng đối tượng trong Java."
---

# Giới thiệu về Java và lập trình hướng đối tượng

Java là một ngôn ngữ lập trình mạnh mẽ và phổ biến được phát triển bởi Sun Microsystems vào năm 1995. Với triết lý "Write Once, Run Anywhere" (Viết một lần, chạy mọi nơi), Java được thiết kế để hoạt động trên nhiều nền tảng khác nhau thông qua Java Virtual Machine (JVM). Trong bài viết này, chúng ta sẽ khám phá các khái niệm cơ bản của Java, đặc biệt là lập trình hướng đối tượng (OOP), một trong những đặc điểm nổi bật của ngôn ngữ này.

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
     ```java
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
        ```
2. **Inheritance (Kế thừa)**:
    - Cho phép một class kế thừa các
        thuộc tính và phương thức từ một class khác, giúp tái sử dụng mã nguồn.
    - Ví dụ:
      ```java
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
      ```
3. **Polymorphism (Đa hình)**:
    - Cho phép các đối tượng của các class khác nhau được xử lý thông qua cùng một giao diện.
    - Ví dụ:
      ```java
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
      ```
4. **Abstraction (Trừu tượng)**:
    - Tạo ra các class trừu tượng và giao diện để định nghĩa các hành
        vi mà không cần triển khai chi tiết.
    - Ví dụ:
      ```java
      public abstract class Shape {
          abstract void draw();
      }

      public class Circle extends Shape {
          void draw() {
              System.out.println("Drawing a circle.");
          }
      }
      ```   
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
"@
# content/blog/collections-java.md
Set-Content -Path content/blog/collections-java.md -Value @"
---
title: "Làm việc với Collections Framework trong Java"
date: 2025-10-05T15:00:00+07:00
categories: ["Java"]
tags: ["java", "collections", "cơ bản"]
author: "Nguyễn Văn A"
readTime: "7 phút đọc"
image: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Khám phá các loại Collections trong Java, cách sử dụng và lựa chọn phù
hợp cho từng tình huống."
---
# Làm việc với Collections Framework trong Java
Java Collections Framework là một phần quan trọng của ngôn ngữ Java, cung cấp các cấu trúc dữ liệu và thuật toán để lưu trữ, quản lý và thao tác với nhóm các đối tượng. Trong bài viết này, chúng ta sẽ tìm hiểu về các loại Collections phổ biến trong Java, cách sử dụng chúng và những lưu ý khi lựa chọn cấu trúc dữ liệu phù hợp cho từng tình huống.
## Collections Framework là gì?
Collections Framework cung cấp một cấu trúc thống nhất để biểu diễn và thao tác với các tập hợp dữ liệu như danh sách, tập hợp, và ánh xạ. Nó bao gồm:
    - Interfaces: Định nghĩa các hành vi chung (ví dụ: List, Set, Map).
    - Implementations: Các lớp cụ thể thực thi interface (ví dụ: ArrayList, HashSet, HashMap).
    - Algorithms: Các phương thức tiện ích như sort, search, shuffle.
## Các thành phần chính
### 1. List
    - Đại diện cho một tập hợp có thứ tự, cho phép các phần tử trùng
lặp.
    - Các lớp phổ biến: ArrayList, LinkedList, Vector.
    - Ví dụ:
      ```java
      List<String> names = new ArrayList<>();
      names.add("Alice");
      names.add("Bob");
      names.add("Alice"); // Cho phép trùng lặp
      ```
### 2. Set
    - Đại diện cho một tập hợp không có thứ tự, không cho phép phần tử trùng lặp.
    - Các lớp phổ biến: HashSet, LinkedHashSet, TreeSet.
    - Ví dụ:
      ```java
      Set<String> uniqueNames = new HashSet<>();
      uniqueNames.add("Alice");
      uniqueNames.add("Bob");
      uniqueNames.add("Alice"); // Không cho phép trùng lặp
      ```
### 3. Map
    - Đại diện cho một tập hợp các cặp key-value, cho phép truy cập giá trị thông qua khóa.
    - Các lớp phổ biến: HashMap, LinkedHashMap, TreeMap.
    - Ví dụ:
      ```java
      Map<String, Integer> ageMap = new HashMap<>();
      ageMap.put("Alice", 30);
      ageMap.put("Bob", 25);
      ageMap.put("Charlie", 35);
      ```
## Lựa chọn Collections phù hợp
- Sử dụng **List** khi cần duy trì thứ tự và cho phép trùng lặp.
- Sử dụng **Set** khi cần đảm bảo tính duy nhất của các phần tử.
- Sử dụng **Map** khi cần ánh xạ giữa các khóa và giá trị.
## Lưu ý khi sử dụng Collections
- Hiểu rõ đặc điểm của từng loại Collections để lựa chọn phù hợp.
- Sử dụng các phương thức tiện ích trong lớp Collections để thao tác hiệu quả.
- Cân nhắc về hiệu suất và bộ nhớ khi làm việc với các Collections lớn.
## Kết luận
Java Collections Framework là một công cụ mạnh mẽ giúp quản lý và thao tác với dữ liệu một cách hiệu quả. Bằng cách hiểu rõ các loại Collections và cách sử dụng chúng, bạn có thể xây dựng các ứng dụng Java linh hoạt và dễ bảo trì. Hãy tiếp tục khám phá và thực hành để nắm vững kiến thức về Collections trong Java!
"@
# content/blog/async-await-js.md
Set-Content -Path content/blog/async-await-js.md -Value @"
---
title: "Hiểu về Async/Await trong JavaScript"
date: 2025-10-06T15:00:00+07:00
categories: ["JavaScript"]
tags: ["javascript", "async", "await", "promise"]
author: "Nguyễn Văn A"
readTime: "6 phút đọc"
image: "https://images.unsplash.com/photo-1518773553398-650c184e0bb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu cách sử dụng async/await để xử lý các tác vụ bất đồng bộ trong JavaScript một cách dễ dàng và hiệu quả."
---
# Hiểu về Async/Await trong JavaScript
JavaScript là một ngôn ngữ lập trình phổ biến được sử dụng rộng rãi trong phát triển web. Một trong những thách thức lớn khi làm việc với JavaScript là xử lý các tác vụ bất đồng bộ (asynchronous tasks). Trước đây, chúng ta thường sử dụng callback và Promise để quản lý các tác vụ này, nhưng với sự xuất hiện của async/await, việc viết mã bất đồng bộ trở nên dễ dàng và trực quan hơn rất nhiều. Trong bài viết này, chúng ta sẽ tìm hiểu về async/await và cách sử dụng chúng trong JavaScript.
## Tại sao cần async/await?
Trong JavaScript, các tác vụ như gọi API, đọc file, hoặc thực hiện các thao tác tốn thời gian khác thường được thực hiện bất đồng bộ để tránh làm treo giao diện người dùng. Trước khi có async/await, chúng ta thường sử dụng callback hoặc Promise để xử lý các tác vụ này. Tuy nhiên, việc sử dụng callback có thể dẫn đến hiện tượng "callback hell", làm mã trở nên khó đọc và bảo trì. Promise cải thiện điều này, nhưng mã vẫn có thể trở nên phức tạp khi có nhiều bước bất đồng bộ liên tiếp.
Async/await được giới thiệu trong ES2017 như một cách để viết mã bất đồng bộ trông giống như mã đồng bộ, giúp cải thiện tính đọc được và bảo trì của mã.
## Cách sử dụng async/await
Để sử dụng async/await, trước tiên bạn cần định nghĩa một hàm async. Bên trong hàm async, bạn có thể sử dụng await để chờ đợi một Promise được giải quyết. Dưới đây là cú pháp cơ bản:
```javascript
async function myFunction() {
  try {
    const result = await someAsyncOperation();
    console.log(result);
  } catch (error) {
    console.error(error);
  }
}
```
### Ví dụ thực tế
Giả sử chúng ta có một hàm fetchData để lấy dữ liệu từ một API:
```javascript
async function fetchData(url) {
  try {
    const response = await fetch(url);
    const data = await response.json();
    return data;
  } catch (error) {
    console.error(error);
  }
}
fetchData('https://api.example.com/data')
  .then(data => console.log(data));
```
Trong ví dụ trên, hàm fetchData là một hàm async. Chúng ta sử dụng await để chờ đợi kết quả từ hàm fetch và response.json(). Nếu có lỗi xảy ra trong quá trình này, nó sẽ được bắt bởi khối catch.
### Lợi ích của async/await
- Mã dễ đọc và bảo trì hơn: Cú pháp async/await giúp mã trông giống như mã đồng bộ, làm cho luồng logic dễ hiểu hơn.
- Quản lý lỗi dễ dàng: Sử dụng try/catch để xử lý lỗi một cách trực quan.
- Giảm thiểu callback hell: Tránh việc lồng nhiều callback, làm mã trở nên phức tạp.
### Lưu ý khi sử dụng async/await
- Chỉ sử dụng await bên trong hàm async.
- Nếu một hàm không phải là async, bạn không thể sử dụng await bên trong nó.
- Cẩn thận với các tác vụ bất đồng bộ: Nếu bạn không chờ đợi một Promise, nó có thể gây ra lỗi khó phát hiện.
## Kết luận
Async/await là một công cụ mạnh mẽ trong JavaScript giúp xử lý các tác vụ bất đồng bộ một cách dễ dàng và hiệu quả. Bằng cách sử dụng async/await, bạn có thể viết mã rõ ràng hơn, dễ đọc và bảo trì hơn. Hãy tiếp tục thực hành và khám phá thêm về async/await để nâng cao kỹ năng lập trình JavaScript của bạn!
"@
# content/blog/closures-js.md
Set-Content -Path content/blog/closures-js.md -Value @"
---
title: "Hiểu về Closures trong JavaScript"
date: 2025-10-07T15:00:00+07:00
categories: ["JavaScript"]
tags: ["javascript", "closures", "scope"]
author: "Nguyễn Văn A"
readTime: "5 phút đọc"
image: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về closures trong JavaScript, cách chúng hoạt động và ứng dụng thực tế."
---
# Hiểu về Closures trong JavaScript
Closures là một khái niệm quan trọng trong JavaScript, giúp bạn hiểu cách các biến và hàm tương tác với nhau trong phạm vi (scope). Trong bài viết này, chúng ta sẽ khám phá khái niệm closures, cách chúng hoạt động và những ứng dụng thực tế của chúng trong lập trình JavaScript.
## Closures là gì?
Closures là một hàm có quyền truy cập vào biến từ phạm vi chứa nó, ngay cả khi hàm đó được gọi bên ngoài phạm vi chứa. Điều này có nghĩa là một hàm bên trong có thể "nhớ" và sử dụng các biến từ hàm bên ngoài mà nó được định nghĩa.
## Cách hoạt động của Closures
Khi một hàm được tạo ra, nó có thể truy cập vào các biến từ phạm vi bên ngoài của nó. Khi hàm bên ngoài kết thúc, các biến trong phạm vi của nó thường sẽ bị xóa khỏi bộ nhớ. Tuy nhiên, nếu có một hàm bên trong vẫn còn tham chiếu đến các biến đó, chúng sẽ không bị xóa và vẫn có thể được truy cập.
Dưới đây là một ví dụ đơn giản về closures:
```javascript
function outerFunction() {
  let count = 0; // Biến trong phạm vi bên ngoài
  function innerFunction() {
    count++;
    console.log(count);
  }
  return innerFunction;
}
const counter = outerFunction();
counter(); // In ra 1
counter(); // In ra 2
counter(); // In ra 3
```
Trong ví dụ trên, `innerFunction` là một closure vì nó có quyền truy cập vào biến `count` từ `outerFunction`, ngay cả khi `outerFunction` đã kết thúc.
## Ứng dụng của Closures
Closures có nhiều ứng dụng hữu ích trong lập trình JavaScript, bao gồm:
- **Tạo biến riêng tư**: Bạn có thể sử dụng closures để tạo các biến riêng tư mà không thể truy cập từ bên ngoài.
- **Hàm tạo (Factory functions)**: Sử dụng closures để tạo các hàm với trạng thái riêng biệt.
- **Hàm callback**: Closures thường được sử dụng trong các hàm callback để giữ trạng thái.
## Lưu ý khi sử dụng Closures
- Tránh tạo ra các closures không cần thiết, vì chúng có thể giữ tham chiếu đến các biến và gây rò rỉ bộ nhớ.
- Hãy cẩn thận với việc sử dụng closures trong vòng lặp, vì chúng có thể tạo ra hành vi không mong muốn.
## Kết luận
Closures là một khái niệm mạnh mẽ trong JavaScript, giúp bạn quản lý phạm vi và trạng thái của các biến một cách hiệu quả. Bằng cách hiểu và sử dụng closures đúng cách, bạn có thể viết mã JavaScript linh hoạt và dễ bảo trì hơn. Hãy tiếp tục thực hành và khám phá thêm về closures để nâng cao kỹ năng lập trình của bạn!
"@
# content/blog/design-patterns-java.md
Set-Content -Path content/blog/design-patterns-java.md -Value @"
---
title: "Các mẫu thiết kế phổ biến trong Java"
date: 2025-10-08T15:00:00+07:00
categories: ["Java"]
tags: ["java", "design patterns", "oop"]
author: "Nguyễn Văn A"
readTime: "8 phút đọc"
---
image: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Khám phá các mẫu thiết kế (design patterns) phổ biến trong Java và cách áp dụng chúng để xây dựng các ứng dụng hiệu quả và dễ bảo trì."
---
# Các mẫu thiết kế phổ biến trong Java
Mẫu thiết kế (design patterns) là các giải pháp tái sử dụng cho các vấn đề phổ biến trong phát triển phần mềm. Chúng giúp cải thiện cấu trúc và tổ chức mã nguồn, làm cho ứng dụng dễ bảo trì và mở rộng hơn. Trong bài viết này, chúng ta sẽ khám phá một số mẫu thiết kế phổ biến trong Java và cách áp dụng chúng trong lập trình hướng đối tượng (OOP).
## 1. Singleton Pattern
Singleton là một mẫu thiết kế đảm bảo rằng một lớp chỉ có một thể hiện duy nhất và cung cấp một điểm truy cập toàn cục đến thể hiện đó. Điều này hữu ích khi bạn cần kiểm soát truy cập đến tài nguyên chung, như kết nối cơ sở dữ liệu hoặc cấu hình ứng dụng.
```java
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
```
## 2. Factory Pattern
```java
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
```
Factory Pattern cung cấp một phương thức để tạo các đối tượng mà không cần chỉ định lớp cụ thể của chúng. Điều này giúp giảm sự phụ thuộc giữa các lớp và làm cho mã nguồn dễ mở rộng hơn.
## 3. Observer Pattern
Observer Pattern định nghĩa một mối quan hệ một-nhiều giữa các đối tượng, cho phép một đối tượng (subject) thông báo cho nhiều đối tượng khác (observers) khi có sự thay đổi trạng thái. Mẫu thiết kế này thường được sử dụng trong các hệ thống sự kiện và giao diện người dùng.
```java
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
```
## 4. Strategy Pattern
Strategy Pattern định nghĩa một họ các thuật toán, đóng gói từng thuật toán và làm cho chúng có thể thay thế lẫn nhau. Mẫu thiết kế này giúp tách biệt thuật toán khỏi ngữ cảnh sử dụng, làm cho mã nguồn dễ bảo trì và mở rộng.
```java
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
```
## Kết luận
Các mẫu thiết kế là công cụ quan trọng giúp cải thiện cấu trúc và tổ chức mã nguồn trong phát triển phần mềm. Bằng cách hiểu và áp dụng các mẫu thiết kế phổ biến như Singleton, Factory, Observer và Strategy, bạn có thể xây dựng các ứng dụng Java hiệu quả, dễ bảo trì và mở rộng. Hãy tiếp tục khám phá và thực hành để nắm vững kiến thức về design patterns trong Java!
"@
# content/blog/dom-js.md
Set-Content -Path content/blog/dom-js.md -Value @"
---
title: "Thao Tác với DOM trong JavaScript"
date: 2025-10-09T15:00:00+07:00
categories: ["JavaScript"]
tags: ["javascript", "dom", "web development"]
author: "Nguyễn Văn A"
readTime: "6 phút đọc"
image: "https://images.unsplash.com/photo-1504384308090-c894fdcc538d?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về Document Object Model (DOM) và cách sử dụng JavaScript để thao tác với các phần tử HTML trên trang web."
---
# Thao Tác với DOM trong JavaScript
Document Object Model (DOM) là một giao diện lập trình ứng dụng (API) cho các tài liệu HTML và XML. DOM cung cấp một cấu trúc cây (tree structure) đại diện cho trang web, cho phép các ngôn ngữ lập trình như JavaScript truy cập và thao tác với các phần tử trên trang. Trong bài viết này, chúng ta sẽ tìm hiểu về DOM và cách sử dụng JavaScript để thao tác với các phần tử HTML.
## Hiểu về DOM
DOM được tổ chức dưới dạng một cây các nút (node), trong đó mỗi nút đại diện cho một phần tử, thuộc tính hoặc văn bản trong tài liệu. Bạn có thể sử dụng JavaScript để truy cập, thay đổi hoặc xóa các nút này. Dưới đây là một số phương thức phổ biến để thao tác với DOM:
```javascript
// Lấy phần tử theo ID
const element = document.getElementById("myElement");

// Lấy tất cả các phần tử theo lớp
const elements = document.getElementsByClassName("myClass");

// Lấy phần tử đầu tiên theo thẻ
const firstElement = document.querySelector("div");

// Thay đổi nội dung văn bản
element.innerText = "Nội dung mới";

// Thêm lớp CSS
element.classList.add("new-class");

// Xóa phần tử
element.remove();
```
## Thêm và Xóa Phần Tử
Bạn có thể sử dụng JavaScript để thêm hoặc xóa các phần tử HTML trên trang web. Dưới đây là ví dụ về cách thêm một phần tử mới và xóa một phần tử hiện có:
```javascript// Thêm phần tử mới
const newElement = document.createElement("p");
newElement.innerText = "Đây là một đoạn văn mới.";
document.body.appendChild(newElement);

// Xóa phần tử
const elementToRemove = document.getElementById("elementToRemove");
elementToRemove.remove();
```
## Xử Lý Sự Kiện
```javascript
// Thêm sự kiện click cho nút
const button = document.getElementById("myButton");
button.addEventListener("click", function() {
    alert("Nút đã được nhấn!");
});
```JavaScript cho phép bạn thêm các trình xử lý sự kiện (event handlers) để phản hồi các hành động của người dùng, như nhấn nút, di chuột, hoặc nhập liệu.
## Kết Luận
DOM là một phần quan trọng của phát triển web, cho phép bạn tương tác và thao tác với các phần tử HTML trên trang web. Bằng cách sử dụng JavaScript để truy cập và thay đổi DOM, bạn có thể tạo ra các trải nghiệm người dùng động và tương tác hơn. Hãy tiếp tục khám phá và thực hành để nắm vững kỹ năng thao tác với DOM trong JavaScript!
"@
# content/blog/exception-handling-java.md
Set-Content -Path content/blog/exception-handling-java.md -Value @"
---
title: "Xử Lý Ngoại Lệ trong Java"
date: 2025-10-10T15:00:00+07:00
categories: ["Java"]
tags: ["java", "exception handling", "error handling"]
author: "Nguyễn Văn A"
readTime: "5 phút đọc"
image: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về cơ chế xử lý ngoại lệ trong Java và cách sử dụng các khối try-catch để quản lý lỗi hiệu quả."
---
# Xử Lý Ngoại Lệ trong Java
Trong quá trình phát triển phần mềm, việc xử lý các lỗi và ngoại lệ là một phần quan trọng để đảm bảo ứng dụng hoạt động ổn định và không bị gián đoạn. Java cung cấp một cơ chế mạnh mẽ để xử lý ngoại lệ thông qua các khối try-catch-finally. Trong bài viết này, chúng ta sẽ tìm hiểu về cách xử lý ngoại lệ trong Java và cách sử dụng các khối try-catch để quản lý lỗi hiệu quả.
## Hiểu về Ngoại Lệ
Ngoại lệ (exception) là một sự kiện không mong muốn xảy ra trong quá trình thực thi chương trình, làm gián đoạn luồng điều khiển bình thường. Java phân loại ngoại lệ thành hai loại chính: ngoại lệ kiểm tra (checked exceptions) và ngoại lệ không kiểm tra (unchecked exceptions). Ngoại lệ kiểm tra là những ngoại lệ mà trình biên dịch yêu cầu phải xử lý, trong khi ngoại lệ không kiểm tra là những ngoại lệ xảy ra do lỗi lập trình và không yêu cầu phải xử lý.   
## Cách Xử Lý Ngoại Lệ
Để xử lý ngoại lệ trong Java, bạn có thể sử dụng các khối try-catch-finally. Dưới đây là cú pháp cơ bản:
```java
try {
    // Mã có thể gây ra ngoại lệ
} catch (ExceptionType e) {
    // Xử lý ngoại lệ
} finally {
    // Mã luôn được thực thi
}
```
### Ví dụ Thực Tế
```java
public class ExceptionHandlingExample {
    public static void main(String[] args) {
        try {
            int result = 10 / 0;
        } catch (ArithmeticException e) {
            System.out.println("Lỗi chia cho 0: " + e.getMessage());
        } finally {
            System.out.println("Khối finally luôn được thực thi.");
        }
    }
}
```
Trong ví dụ trên, khi thực hiện phép chia cho 0, một ngoại lệ `ArithmeticException` sẽ được ném ra. Khối catch sẽ bắt ngoại lệ này và in ra thông báo lỗi. Khối finally sẽ luôn được thực thi, bất kể có ngoại lệ hay không.
## Lợi Ích của Việc Xử Lý Ngoại Lệ
- **Tăng tính ổn định**: Giúp ứng dụng không bị sập đột ngột khi gặp lỗi.
- **Cải thiện trải nghiệm người dùng**: Cung cấp thông báo lỗi rõ ràng và hướng dẫn cách khắc phục.
- **Dễ dàng bảo trì**: Giúp xác định và xử lý các lỗi một cách có tổ chức.
## Kết Luận
Xử lý ngoại lệ là một phần quan trọng trong lập trình Java, giúp đảm bảo ứng dụng hoạt động ổn định và không bị gián đoạn. Bằng cách sử dụng các khối try-catch-finally, bạn có thể quản lý lỗi hiệu quả và cải thiện trải nghiệm người dùng. Hãy tiếp tục thực hành và khám phá thêm về cơ chế xử lý ngoại lệ trong Java để nâng cao kỹ năng lập trình của bạn!
"@
# content/blog/es6-js.md
Set-Content -Path content/blog/es6-js.md -Value @"
---
title: "Tổng Quan về ES6 trong JavaScript"
date: 2025-10-11T15:00:00+07:00
categories: ["JavaScript"]
tags: ["javascript", "es6", "ecmascript"]
author: "Nguyễn Văn A"
readTime: "7 phút đọc"
image: "https://images.unsplash.com/photo-1518773553398-650c184e0bb3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Khám phá các tính năng mới của ES6 (ECMAScript 2015) và cách chúng cải thiện trải nghiệm lập trình JavaScript."
---
# Tổng Quan về ES6 trong JavaScript
ES6, hay còn gọi là ECMAScript 2015, là một phiên bản quan trọng của ngôn ngữ lập trình JavaScript, mang đến nhiều tính năng mới giúp cải thiện trải nghiệm lập trình và làm cho mã nguồn trở nên rõ ràng hơn. Trong bài viết này, chúng ta sẽ khám phá các tính năng nổi bật của ES6 và cách sử dụng chúng trong phát triển ứng dụng JavaScript.
## 1. Let và Const
ES6 giới thiệu hai từ khóa mới để khai báo biến: `let` và `const`. Khác với `var`, `let` có phạm vi khối (block scope) và `const` được sử dụng để khai báo hằng số (constant).
```javascript
let x = 10;
const y = 20;
x = 15; // Hợp lệ
y = 25; // Lỗi: không thể gán lại giá trị cho hằng số
```
## 2. Arrow Functions
Arrow functions cung cấp một cú pháp ngắn gọn để viết các hàm. Chúng cũng giữ ngữ cảnh của `this` từ phạm vi bên ngoài.
```javascript
const add = (a, b) => a + b;
console.log(add(5, 3)); // Kết quả: 8
const multiply = (a, b) => {
    return a * b;
};
console.log(multiply(5, 3)); // Kết quả: 15
```
## 3. Template Literals
Template literals cho phép bạn nhúng biểu thức vào chuỗi một cách dễ dàng bằng cách sử dụng dấu backtick (`` ` ``) và `${}`.
```javascript
const name = "Alice";
const greeting = `Hello, ${name}!`;
console.log(greeting); // Kết quả: Hello, Alice!
const a = 5;
const b = 10;
console.log(`Tổng của ${a} và ${b} là ${a + b}.`); // Kết quả: Tổng của 5 và 10 là 15.
```
## 4. Destructuring Assignment
Destructuring assignment cho phép bạn trích xuất giá trị từ mảng hoặc đối tượng và gán chúng vào các biến một cách dễ dàng.
```javascript
// Destructuring mảng
const [first, second] = [1, 2, 3];
console.log(first); // Kết quả: 1
console.log(second); // Kết quả: 2
// Destructuring đối tượng
const person = { name: "Bob", age: 30 };
const { name, age } = person;
console.log(name); // Kết quả: Bob
console.log(age); // Kết quả: 30
```
## 5. Classes
ES6 giới thiệu cú pháp lớp (class) để định nghĩa các đối tượng và kế thừa, làm cho mã nguồn trở nên rõ ràng và dễ hiểu hơn.
```javascript
class Animal {
    constructor(name) {
        this.name = name;
    }
    speak() {
        console.log(`${this.name} makes a noise.`);
    }
}
class Dog extends Animal {
    speak() {
        console.log(`${this.name} barks.`);
    }
}
const dog = new Dog("Rex");
dog.speak(); // Kết quả: Rex barks.
```
## 6. Promises
Promises cung cấp một cách để xử lý các tác vụ bất đồng bộ, giúp tránh hiện tượng "callback hell".
```javascript
const fetchData = () => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Dữ liệu đã được tải.");
        }, 2000);
    });
};
fetchData().then(data => console.log(data)); // Kết quả sau 2 giây: Dữ liệu đã được tải.
```
## Kết Luận
ES6 mang đến nhiều tính năng mới giúp cải thiện trải nghiệm lập trình JavaScript, làm cho mã nguồn trở nên rõ ràng và dễ bảo trì hơn. Bằng cách nắm vững các tính năng như `let`, `const`, arrow functions, template literals, destructuring, classes và promises, bạn có thể viết mã JavaScript hiệu quả và hiện đại hơn. Hãy tiếp tục khám phá và thực hành để nâng cao kỹ năng lập trình của bạn với ES6!
"@
# content/blog/multithreading-java.md
Set-Content -Path content/blog/multithreading-java.md -Value @"
---
title: "Lập Trình Đa Luồng trong Java"
date: 2025-10-12T15:00:00+07:00
categories: ["Java"]
tags: ["java", "multithreading", "concurrency"]
author: "Nguyễn Văn A"
readTime: "7 phút đọc"
image: "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80"
excerpt: "Tìm hiểu về lập trình đa luồng trong Java và cách sử dụng các công cụ để quản lý đồng thời."
---
# Lập Trình Đa Luồng trong Java
Lập trình đa luồng (multithreading) là một kỹ thuật quan trọng trong phát triển phần mềm, cho phép một ứng dụng thực hiện nhiều tác vụ cùng một lúc. Java cung cấp một mô hình đa luồng mạnh mẽ, giúp tối ưu hóa hiệu suất và cải thiện trải nghiệm người dùng. Trong bài viết này, chúng ta sẽ tìm hiểu về lập trình đa luồng trong Java và cách sử dụng các công cụ để quản lý đồng thời.
## Hiểu về Đa Luồng
Đa luồng là khả năng của một chương trình để thực hiện nhiều luồng (threads) cùng một lúc. Mỗi luồng đại diện cho một dòng điều khiển riêng biệt trong chương trình, có thể chạy song song với các luồng khác. Điều này giúp tận dụng tối đa tài nguyên hệ thống và cải thiện hiệu suất của ứng dụng.
## Tạo và Quản Lý Luồng trong Java
Trong Java, bạn có thể tạo luồng bằng cách kế thừa lớp `Thread` hoặc triển khai giao diện `Runnable`. Dưới đây là ví dụ về cả hai cách:
### Kế thừa lớp Thread
```java
class MyThread extends Thread {
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Thread: " + i);
        }
    }
}
public class ThreadExample {
    public static void main(String[] args) {
        MyThread thread1 = new MyThread();
        MyThread thread2 = new MyThread();
        thread1.start();
        thread2.start();
    }
}
```
### Triển khai giao diện Runnable   
```java
class MyRunnable implements Runnable {
    public void run() {
        for (int i = 0; i < 5; i++) {
            System.out.println("Runnable: " + i);
        }
    }
}
public class RunnableExample {
    public static void main(String[] args) {
        Thread thread1 = new Thread(new MyRunnable());
        Thread thread2 = new Thread(new MyRunnable());
        thread1.start();
        thread2.start();
    }
}
```
## Đồng Bộ Hóa Luồng
Khi nhiều luồng truy cập và thay đổi cùng một tài nguyên chung, có thể xảy ra các vấn đề về đồng bộ hóa (synchronization). Java cung cấp từ khóa `synchronized` để đảm bảo rằng chỉ một luồng có thể truy cập vào một phương thức hoặc khối mã tại một thời điểm.
```java
class Counter {
    private int count = 0;

    public synchronized void increment() {
        count++;
    }

    public int getCount() {
        return count;
    }
}
public class SyncExample {
    public static void main(String[] args) throws InterruptedException {
        Counter counter = new Counter();
        Thread t1 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });
        Thread t2 = new Thread(() -> {
            for (int i = 0; i < 1000; i++) {
                counter.increment();
            }
        });
        t1.start();
        t2.start();
        t1.join();
        t2.join();
        System.out.println("Final count: " + counter.getCount());
    }
}
```
## Lợi Ích của Đa Luồng
- **Tăng hiệu suất**: Tận dụng tối đa tài nguyên hệ thống bằng cách thực hiện nhiều tác vụ cùng lúc.
- **Cải thiện trải nghiệm người dùng**: Giúp ứng dụng phản hồi nhanh hơn bằng cách xử lý các tác vụ nặng trong luồng riêng biệt.
- **Quản lý tài nguyên hiệu quả**: Giúp tối ưu hóa việc sử dụng CPU và bộ nhớ.
## Kết Luận 
Lập trình đa luồng là một kỹ thuật quan trọng trong phát triển phần mềm, giúp cải thiện hiệu suất và trải nghiệm người dùng. Bằng cách hiểu và áp dụng các khái niệm về luồng, đồng bộ hóa và quản lý tài nguyên, bạn có thể xây dựng các ứng dụng Java hiệu quả và mạnh mẽ. Hãy tiếp tục khám phá và thực hành để nâng cao kỹ năng lập trình đa luồng của bạn!
"@
# data/profile.yaml
Set-Content -Path data/profile.yaml -Value @"
name: "Nguyễn Văn A"
job: "Lập trình viên"
bio: "Tôi là một lập trình viên đam mê công nghệ và yêu thích việc chia sẻ kiến thức về lập trình và phát triển phần mềm."
location: "Hồ Chí Minh, Việt Nam"
social:
    email: "contact@example.com"
    skills: ["Java", "JavaScript", "React", "Spring Boot", "Node.js", "MySQL", "MongoDB"]
    experience: "5+ năm kinh nghiệm"
    education: "Cử nhân Công nghệ Thông tin"
    avatar: "/img/avatar.jpg"
    contact:
    email: "contact@example.com"
    phone: "+84 123 456 789"
    address: "Hồ Chí Minh, Việt Nam"
    social:
    github: "https://github.com"
    linkedin: "https://linkedin.com"
    twitter: "https://twitter.com"
"@
# data/categories.yaml
Set-Content -Path data/categories.yaml -Value @"
- name: "Tất cả" count: 9
- name: "Java" count: 5
- name: "JavaScript" count: 4
- name: "Web Development" count: 3
"@
# layouts/partials/custom-head.html
Set-Content -Path layouts/partials/custom-head.html -Value @"
<!-- Custom Head Partial -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="{{ .Site.Params.author }}">
<meta name="description" content="{{ with .Params.excerpt }}{{ . }}{{ else }}{{ .Site.Params.description }}{{ end }}">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="/css/custom.css">
"@
# layouts/partials/footer.html
Set-Content -Path layouts/partials/footer.html -Value @"
<!-- Footer Partial -->
<footer class="footer">
    <div class="container">
        <p>&copy; {{ now.Format "2006" }} {{ .Site.Params.author }}. All rights reserved.</p>
        <p>Follow me on 
            <a href="{{ .Site.Params.social.github }}">GitHub</a>, 
            <a href="{{ .Site.Params.social.linkedin }}">LinkedIn</a>, 
            <a href="{{ .Site.Params.social.twitter }}">Twitter</a>
        </p>
    </div>
</footer>
<script src="/js/custom.js"></script>
"@
# layouts/partials/header.html
Set-Content -Path layouts/partials/header.html -Value @"
<!-- Header Partial -->
<header class="header">
    <div class="container">
        <h1 class="site-title"><a href="{{ .Site.BaseURL }}">{{ .Site.Title }}</a></h1>
        <nav class="nav">
            <ul>
                <li><a href="{{ .Site.BaseURL }}">Home</a></li>
                <li><a href="{{ .Site.BaseURL }}about">About</a></li>
                <li><a href="{{ .Site.BaseURL }}blog">Blog</a></li>
                <li><a href="{{ .Site.BaseURL }}contact">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>
"@
# layouts/partials/sidebar.html
Set-Content -Path layouts/partials/sidebar.html -Value @"
<!-- Sidebar Partial -->
<aside class="sidebar">
    <div class="profile">
        <img src="{{ .Site.Params.avatar }}" alt="{{ .Site.Params.name }}" class="avatar">
        <h2>{{ .Site.Params.name }}</h2>
        <p>{{ .Site.Params.job }}</p>
        <p>{{ .Site.Params.location }}</p>
        <div class="social-links">
            <a href="{{ .Site.Params.social.github }}">GitHub</a>
            <a href="{{ .Site.Params.social.linkedin }}">LinkedIn</a>
            <a href="{{ .Site.Params.social.twitter }}">Twitter</a>
        </div>
    </div>
    <div class="categories
">
        <h3>Categories</h3>
        <ul>
            {{ range .Site.Data.categories }}
            <li><a href="{{ $.Site.BaseURL }}categories/{{ .name | urlize }}">{{ .name }} ({{ .count }})</a></li>
            {{ end }}
        </ul>
    </div>
</aside>
"@
# layouts/partials/custom-scripts.html
Set-Content -Path layouts/partials/custom-scripts.html -Value @"
<!-- Custom Scripts Partial -->
<script src="/js/custom.js"></script>
<script>
    // Custom JavaScript can be added here
    console.log('Custom scripts loaded.');
</script>
"@
# layouts/_default/baseof.html
Set-Content -Path layouts/_default/baseof.html -Value @"    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ block "title" . }}{{ .Site.Title }}{{ end }}</title>
    {{ partial "custom-head.html" . }}
    {{ block "head" . }}{{ end }}
</head>
<body>
    {{ partial "header.html" . }}
    <div class="container">
        <main class="content">
            {{ block "main" . }}{{ end }}
        </main>
        {{ partial "sidebar.html" . }}
    </div>
    {{ partial "footer.html" . }}
    {{ partial "custom-scripts.html" . }}
    {{ block "scripts" . }}{{ end }}
</body>
</html>
"@
# layouts/_default/single.html
Set-Content -Path layouts/_default/single.html -Value @"
{{ define "title" }}{{ .Title }} - {{ .Site.Title }}{{ end }}
{{ define "main" }}
<article class="post">
    <header class="post-header">
        <h1 class="post-title">{{ .Title }}</h1>
        <p class="post-meta">Published on {{ .Date.Format "January 2, 2006" }} | {{ .ReadingTime }} min read</p>
        {{ with .Params.image }}<img src="{{ . }}" alt="{{ $.Title }}" class="post-image">{{ end }}
    </header>
    <div class="post-content">
        {{ .Content }}
    </div>
</article>
{{ end }}
"@
# layouts/_default/list.html
Set-Content -Path layouts/_default/list.html -Value @"
{{ define "title" }}Blog - {{ .Site.Title }}{{ end }}
{{ define "main" }}<article class="post">
    <header class="post-header">
        <h1 class="post-title">Blog</h1>
    </header>
    <div class="post-list">
        {{ range .Paginator.Pages }}
        <div class="post-item">
            <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
            <p class="post-meta">Published on {{ .Date.Format "January 2, 2006" }} | {{ .ReadingTime }} min read</p>
            {{ with .Params.image }}<img src="{{ . }}" alt="{{ $.Title }}" class="post-image">{{ end }}
            <p>{{ with .Params.excerpt }}{{ . }}{{ else }}{{ .Summary }}{{ end }}</p>
            <a href="{{ .RelPermalink }}" class="read-more">Read More</a>
        </div>
        {{ end }}
        <div class="pagination">
            {{ if .Paginator.HasPrev }}
            <a href="{{ .Paginator.Prev.URL }}" class="prev">Previous</a>
            {{ end }}
            {{ if .Paginator.HasNext }}
            <a href="{{ .Paginator.Next.URL }}" class="next">Next</a>
            {{ end }}
        </div>
    </div>
</article>
{{ end }}
"@
# layouts/index.html
Set-Content -Path layouts/index.html -Value @"
{{ define "title" }}Home - {{ .Site.Title }}{{ end }}
{{ define "main" }}<article class="post">
    <header class="post-header">
        <h1 class="post-title">Welcome to My Blog</h1>
        <p class="post-meta">Latest Posts</p>
    </header>
    <div class="post-list">
        {{ range first 5 (where .Site.RegularPages "Type" "blog") }}
        <div class="post-item">
            <h2><a href="{{ .RelPermalink }}">{{ .Title }}</a></h2>
            <p class="post-meta">Published on {{ .Date.Format "January 2, 2006" }} | {{ .ReadingTime }} min read</p>
            {{ with .Params.image }}<img src="{{ . }}" alt="{{ $.Title }}" class="post-image">{{ end }}
            <p>{{ with .Params.excerpt }}{{ . }}{{ else }}{{ .Summary }}{{ end }}</p>
            <a href="{{ .RelPermalink }}" class="read-more">Read More</a>
        </div>
        {{ end }}
        <a href="{{ .Site.BaseURL }}blog" class="view-all">View All Posts</a>
    </div>
</article>
{{ end }}
"@
# layouts/shortcodes/figure.html
Set-Content -Path layouts/shortcodes/figure.html -Value @"
<figure class="figure">
    <img src="{{ .Get "src" }}" alt="{{ .Get "alt" }}" class="figure-image">
    {{ with .Get "caption" }}<figcaption class="figure-caption">{{ . }}</figcaption>{{ end }}
</figure>
"@
# static/css/app.css
Set-Content -Path static/css/app.css -Value @"
/* app CSS */
:root {
--bg-page: #1a1c1b;
--bg-card: #302f2c;
--text-primary: #d9fb06;
--text-secondary: #888680;
--text-muted: #302f2c;
--text-inverse: #1a1c1b;
--border-light: rgba(63, 72, 22, 0.5);
--border-medium: #3f4816;
--brand-primary: #d9fb06;
--brand-hover: rgba(217, 251, 6, 0.8);
--secondary-olive: #3f4816;
--secondary-yellow: #f8d47a;
}
body { font-family: 'Inter', Arial, sans-serif; background: var(--bg-page); color: var(--text-primary); }
.btn-primary { background: var(--brand-primary); color: var(--text-inverse); border-radius: 10rem; padding: 1em 1.5em; }
.btn-secondary { background: transparent; border: 1px solid var(--brand-primary); color: var(--brand-primary); border-radius: 10rem; padding: 1em 1.5em; }
.nav-link { color: var(--text-primary); text-decoration: none; font-weight: 500; }
.nav-link.active { color: var(--brand-primary); font-weight: 600; }
.card { background: var(--bg-card); border: 1px solid var(--border-medium); border-radius: 8px; }
.container { max-width: 87.5rem; margin: 0 auto; padding: 0 40px; }
.heading-1 { font-size: clamp(2.5rem, 4rem + 2vw, 4.5rem); font-weight: 900; }
.heading-2 { font-size: clamp(2rem, 3rem + 1.5vw, 3.5rem); font-weight: 900; }
.heading-4 { font-size: 1.5rem; font-weight: 600; }
.body-large { font-size: 1.5rem; font-weight: 500; }
.body-small { font-size: 1rem; font-weight: 500; }
.caption { font-size: 0.8rem; font-weight: 500; text-transform: uppercase; }
textarea { min-height: 150px; }
input, textarea { background: var(--bg-page); color: var(--text-primary); border-color: var(--border-medium); }
input:focus, textarea:focus { outline: none; border-color: var(--brand-primary); }
"@
# static/js/blog.js
Set-Content -Path static/js/blog.js -Value @"
// Blog JavaScript
Set-Content -Path static/js/blog.js -Value @"
function filterCategory(category) {
document.querySelectorAll('.post').forEach(post => {
post.style.display = (category === 'Tất cả' || post.dataset.category === category) ? 'block' : 'none';
});
}
document.getElementById('search').addEventListener('input', e => {
const term = e.target.value.toLowerCase();
document.querySelectorAll('.post').forEach(post => {
const title = post.querySelector('h2').textContent.toLowerCase();
const excerpt = post.querySelector('p').textContent.toLowerCase();
post.style.display = (title.includes(term) || excerpt.includes(term)) ? 'block' : 'none';
});
});
"@ 
# .github/workflows/deploy.yml
Set-Content -Path .github/workflows/deploy.yml -Value @"
name: Deploy to GitHub Pages
on:
  push:
    branches:
      - main
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: Set up Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: '0.92.2'
      - name: Build site
        run: hugo --minify
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./public
            user_name: 'github-actions[bot]'
            user_email: 'github-actions[bot]@users.noreply.github.com'
            commit_message: 'Deploy site'
            keep_files: false
            force_orphan: true
            target_branch: gh-pages
            enable_jekyll: false
            cname: ''
            fqdn: ''
            publish_branch: gh-pages
            publish_dir: ./public
"@