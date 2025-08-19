// Navbar scroll effect
window.addEventListener("scroll", () => {
    const navbar = document.querySelector(".navbar");
    if (window.scrollY > 50) {
      navbar.classList.add("scrolled");
    } else {
      navbar.classList.remove("scrolled");
    }
  });
  
  // Smooth scroll for navbar links
  document.querySelectorAll(".nav-link").forEach(link => {
    link.addEventListener("click", function(e) {
      e.preventDefault();
      const targetId = this.getAttribute("href").substring(1);
      const target = document.getElementById(targetId);
      window.scrollTo({
        top: target.offsetTop - 60,
        behavior: "smooth"
      });
    });
  });
  
  // Fade-in animation on scroll
  const fadeElements = document.querySelectorAll(".card, #skills i");
  
  const observer = new IntersectionObserver(entries => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add("animate__animated", "animate__fadeInUp");
      }
    });
  }, { threshold: 0.2 });
  
  fadeElements.forEach(el => observer.observe(el));
  