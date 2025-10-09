// Disable sidebar dropdown collapsing on desktop
if (document.getElementById("sidebar")) {
    // On desktop (min-width: 1025px), disable the collapse behavior
    if (window.matchMedia('(min-width: 1025px)').matches) {
        var elements = document.getElementById("sidebar").getElementsByTagName("button");
        for (var i = 0, len = elements.length; i < len; i++) {
            // Override the onclick to do nothing on desktop
            elements[i].onclick = function (elem) {
                // Prevent default collapse behavior on desktop
                return false;
            }
        }
        
        // Ensure all dropdowns are marked as active for styling
        var dropdowns = document.querySelectorAll('#sidebar .sidebar-dropdown');
        dropdowns.forEach(function(dropdown) {
            dropdown.classList.add('active');
        });
    }
}
