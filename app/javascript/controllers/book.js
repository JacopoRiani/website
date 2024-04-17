document.addEventListener('DOMContentLoaded', function() {
  document.getElementById('search-form').addEventListener('submit', function() {
    document.getElementById('book-select').selectedIndex = 0;
  });
});
