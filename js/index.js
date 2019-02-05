var _createClass = function () {function defineProperties(target, props) {for (var i = 0; i < props.length; i++) {var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);}}return function (Constructor, protoProps, staticProps) {if (protoProps) defineProperties(Constructor.prototype, protoProps);if (staticProps) defineProperties(Constructor, staticProps);return Constructor;};}();function _classCallCheck(instance, Constructor) {if (!(instance instanceof Constructor)) {throw new TypeError("Cannot call a class as a function");}} // the password generator
var SecureMemorablePassword = function () {_createClass(SecureMemorablePassword, [{ key: "special", value: function special()

    {
      return specials[Math.floor(Math.random() * specials.length)];
    }

    // get a random word
  }, { key: "word", value: function word() {

    } }]);


  function SecureMemorablePassword(song) {_classCallCheck(this, SecureMemorablePassword);
    this.password = '';
    // for (let i=0; i<len; i++) {
    //   this.password += this.word() + (i+1);
    // }
    var words = lyrics[song];
    var i = Math.floor(Math.random() * words.length);
    var word1 = words[i].
    replace(/^\w/, function (c) {return c.toUpperCase();}); //uppercase first letter
    var word2 = words[i + 1].
    replace(/^\w/, function (c) {return c.toUpperCase();});
    var word3 = words[i + 2].
    replace(/^\w/, function (c) {return c.toUpperCase();});
    this.password = word1 + 1 + word2 + 2 + word3 + this.special();

    return this.password;
  }return SecureMemorablePassword;}();


// the dom scripts
(function () {
  //helper function to get element by ID
  function id(x) {return document.getElementById(x);}

  var generate = id("generate");
  var output = id("output");
  var length = id("length");
  var song = id("song");
  var copy = id("copy");

  //generate a new password
  generate.onclick = function (e) {
    var x = song.value;
    var pw = new SecureMemorablePassword(x);

    output.value = pw.password;
  };

  //copy password to clipboard and inform user
  copy.onclick = function (e) {
    output.select();
    document.execCommand("copy");
    alert("password copied to clipboard");
  };
})();
