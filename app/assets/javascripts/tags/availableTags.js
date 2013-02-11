$(function() {
  var availableTags = [
    "ActionScript",
    "AppleScript",
    "Asp",
    "BASIC",
    "C",
    "C++",
    "Clojure",
    "COBOL",
    "ColdFusion",
    "Erlang",
    "Fortran",
    "Groovy",
    "Haskell",
    "Java",
    "JavaScript",
    "Lisp",
    "Perl",
    "PHP",
    "Python",
    "Ruby",       
    "Scala",
    "Scheme",
    // add mytags
    "Ruby on Rails",
    "Linux",
    "Haml",
    "Sass",
    "Slim",
    "SQL"
  ];
  $( "#tags" ).autocomplete({
    source: availableTags
  });
});
