// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "@popperjs/core"
import "bootstrap"
import autosize from "autosize"

document.addEventListener("turbo:load", () => {
  // Bootstrap tooltips & popovers
  const popoverTriggerList = document.querySelectorAll('[data-bs-toggle="popover"]');
  const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]');
  [...popoverTriggerList].forEach(el => new bootstrap.Popover(el));
  [...tooltipTriggerList].forEach(el => new bootstrap.Tooltip(el));

  // Autosize for textareas
  autosize(document.querySelectorAll("textarea"));

  // Manual Image Clicker
  const galleryImages = window.galleryImagePaths || [];
  let current = 0;
  const galleryEl = document.getElementById("gallery-image");

  // ✅ Define function outside so all scopes can use it
  function showImage(index) {
    if (galleryEl && galleryImages.length > 0) {
      galleryEl.src = galleryImages[index];
    }
  }

  // ✅ Assign global functions
  window.prevImage = function () {
    current = (current - 1 + galleryImages.length) % galleryImages.length;
    showImage(current);
  };

  window.nextImage = function () {
    current = (current + 1) % galleryImages.length;
    showImage(current);
  };

  // ✅ Show initial image if available
  if (galleryEl && galleryImages.length > 0) {
    showImage(current);
  }
});

