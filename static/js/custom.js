document.addEventListener("DOMContentLoaded", () => {
  console.log("✅ DevBlog custom.js loaded");

  // === MENU TOGGLE ===
  const nav = document.getElementById("main-nav");
  const toggleButton = document.querySelector(".nav-toggle");
  if (toggleButton && nav) {
    toggleButton.addEventListener("click", () => {
      nav.classList.toggle("open");
      toggleButton.setAttribute("aria-expanded", nav.classList.contains("open"));
    });
  }

  // === LUCIDE ICONS INIT ===
  if (window.lucide) {
    lucide.createIcons();
  }

  // === HEADER SCROLL EFFECT ===
  const header = document.querySelector("header");
  if (header) {
    window.addEventListener("scroll", () => {
      if (window.scrollY > 20) {
        header.classList.add("scrolled");
      } else {
        header.classList.remove("scrolled");
      }
    });
  }

  // === SMOOTH SCROLL ===
  document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener("click", function (e) {
      const target = document.querySelector(this.getAttribute("href"));
      if (target) {
        e.preventDefault();
        window.scrollTo({
          top: target.offsetTop - 80,
          behavior: "smooth"
        });
      }
    });
  });

  // === BUTTON CLICK EFFECT ===
  const buttons = document.querySelectorAll(".btn-primary, .btn-outline");
  buttons.forEach(btn => {
    btn.addEventListener("click", () => {
      btn.classList.add("clicked");
      setTimeout(() => btn.classList.remove("clicked"), 200);
    });
  });

  // === FOOTER YEAR AUTO ===
  const footerYear = document.querySelector(".footer-year");
  if (footerYear) {
    footerYear.textContent = new Date().getFullYear(); // Updated to 2025
  }
});
document.addEventListener("DOMContentLoaded", () => {
  const navToggle = document.querySelector(".nav-toggle");
  const nav = document.getElementById("main-nav");

  if (navToggle && nav) {
    navToggle.addEventListener("click", () => {
      nav.classList.toggle("hidden");
      nav.classList.toggle("flex");
    });
  }
});

    document.addEventListener('DOMContentLoaded', function() {
      const categoryButtons = document.querySelectorAll('.category-btn');
      const posts = document.querySelectorAll('.post-card');
      let activeCategory = 'all';

      // Hàm lọc bài viết
      function filterPosts(category) {
        posts.forEach(post => {
          const postCategoryElement = post.querySelector('.category');
          const postCategory = postCategoryElement ? postCategoryElement.textContent.toLowerCase() : '';
          if (category === 'all' || postCategory === category) {
            post.style.display = 'block';
            setTimeout(() => {
              post.style.opacity = '1';
              post.style.transition = 'opacity 0.3s ease';
            }, 10);
          } else {
            post.style.opacity = '0';
            post.style.transition = 'opacity 0.3s ease';
            setTimeout(() => {
              post.style.display = 'none';
            }, 300);
          }
        });
      }

      // Xử lý sự kiện nhấp vào nút
      categoryButtons.forEach(button => {
        button.addEventListener('click', () => {
          const category = button.getAttribute('data-category');
          activeCategory = category;

          // Cập nhật trạng thái active
          categoryButtons.forEach(btn => {
            btn.style.backgroundColor = '#1f2937';
            btn.style.color = '#facc15';
          });
          button.style.backgroundColor = '#374151';
          button.style.color = '#f9fafb';

          // Lọc bài viết
          filterPosts(category);
        });
      });

      // Kích hoạt mặc định "TẤT CẢ"
      const defaultButton = document.querySelector('[data-category="all"]');
      if (defaultButton) {
        defaultButton.style.backgroundColor = '#374151';
        defaultButton.style.color = '#f9fafb';
        filterPosts('all');
      }
    });
