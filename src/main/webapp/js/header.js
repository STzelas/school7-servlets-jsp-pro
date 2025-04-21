const navToggle = document.getElementById('nav-toggle');
const mobileMenu = document.getElementById('mobile-menu');
const submenuToggle = document.getElementById('submenu-toggle');
const submenu = document.getElementById('submenu');
const menuOpenIcon = document.getElementById('menu-open');
const menuCloseIcon = document.getElementById('menu-close');
const submenuIcon = document.getElementById('submenu-icon');

navToggle.addEventListener('click', () => {
  mobileMenu.classList.toggle('hidden');
  menuOpenIcon.classList.toggle('hidden');
  menuCloseIcon.classList.toggle('hidden');
});

submenuToggle.addEventListener('click', () => {
  submenu.classList.toggle('hidden');
  submenuIcon.classList.toggle('rotate-180');
});
