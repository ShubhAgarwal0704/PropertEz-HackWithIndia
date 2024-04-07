document.addEventListener("DOMContentLoaded", function() {
    const staticImage = document.querySelector(".map");
    const externalSection = document.querySelector(".footer");
  
    // Function to handle intersection changes
    function handleIntersection(entries) {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          // External section is in view, move static image up
          staticImage.style.transform = " translateY(-100%)";
        } else {
          // External section is not in view, reset static image position
          staticImage.style.transform = " translateY(0)";
        }
      });
    }
  
    // Create a new intersection observer
    const observer = new IntersectionObserver(handleIntersection);
  
    // Observe the external section
    observer.observe(externalSection);
  });
  