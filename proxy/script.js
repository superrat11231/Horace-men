document.getElementById('checkBtn').addEventListener('click', () => {
    const input = document.getElementById('hgid').value.trim();
    const feedback = document.getElementById('feedback');

    if (!input) {
        feedback.textContent = "Please enter a HorseyGold ID.";
        feedback.style.color = "red";
    } else if (input === '1124') {
        feedback.textContent = "HorseyGold ID is valid!";
        feedback.style.color = "green";
    } else {
        feedback.textContent = "Invalid HorseyGold ID. Only letters and numbers are allowed.";
        feedback.style.color = "red";
    }
});