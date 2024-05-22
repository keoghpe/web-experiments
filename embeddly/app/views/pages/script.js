console.log("Hello from Embeddly: " + window.location.hostname);
console.log("Hello from Embeddly: " + window.cookie);
document.cookie = "site=" + window.location.hostname;
