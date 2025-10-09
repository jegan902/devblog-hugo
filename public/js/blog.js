// Blog JavaScript
document.addEventListener("DOMContentLoaded", function() {
    console.log("blog JS loaded.");
    // Add any additional JavaScript functionality here
});
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
import React from 'react';
import './App.css';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Navigation from './components/Navigation';
import Footer from './components/Footer';
import Home from './pages/Home';
import Blog from './pages/Blog';
import BlogPost from './pages/BlogPost';
import About from './pages/About';
import Contact from './pages/Contact';

function App() {
  return (
    <div className="App" style={{ backgroundColor: 'var(--bg-page)' }}>
      <BrowserRouter>
        <Navigation />
        <main style={{ minHeight: '100vh', paddingTop: '80px' }}>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/blog" element={<Blog />} />
            <Route path="/blog/:id" element={<BlogPost />} />
            <Route path="/about" element={<About />} />
            <Route path="/contact" element={<Contact />} />
          </Routes>
        </main>
        <Footer />
      </BrowserRouter>
    </div>
  );
}

export default App;
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
