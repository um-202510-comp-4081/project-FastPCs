// Import and register all your controllers from the importmap via controllers/**/*_controller
import { application } from "controllers/application"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
eagerLoadControllersFrom("controllers", application)

document.addEventListener("turbo:load", () => {
    const dropdown = document.getElementById("sort-by");
    const grid = document.querySelector(".image-grid");
  
    if (!dropdown || !grid) return;
  
    dropdown.addEventListener("change", () => {
      const items = Array.from(grid.querySelectorAll(".pc-item"));
      const val = dropdown.value;
  
      const [key, order] = val.split("-");
  
      const sorted = items.sort((a, b) => {
        const aVal = a.dataset[key];
        const bVal = b.dataset[key];
  
        if (key === "price" || key === "ram") {
          return order === "asc" ? aVal - bVal : bVal - aVal;
        } else {
          return order === "asc"
            ? aVal.localeCompare(bVal)
            : bVal.localeCompare(aVal);
        }
      });
  
      sorted.forEach(item => grid.appendChild(item)); // Reorder in DOM
    });
  });