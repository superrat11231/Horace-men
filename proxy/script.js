document.getElementById('checkBtn').addEventListener('click', () => {
    const input = document.getElementById('hgid').value.trim();

    if (!input) {
        alert("Hmmm... that doesn't seem to be a valid ID. Check with the developer for more info.");
    } else if (input === '1124') {
        alert("It works");
    } else {
        alert("Hmmm... that doesn't seem to be a valid ID. Check with the developer for more info.");
    }
});