const seatLimit = 25;

let seatCounts = {
    'Play': 0,
    'Group': 0,
    'LKG': 0,
    'UKG': 0,
    '1st Standard': 0,
    '2nd Standard': 0,
    '3rd Standard': 0,
    '4th Standard': 0,
    '5th Standard': 0,
    '6th Standard': 0,
    '7th Standard': 0,
    '8th Standard': 0,
    '9th Standard': 0,
    '10th Standard': 0
};

const classFees = {
    'Play': 5000,
    'Group': 6000,
    'LKG': 7000,
    'UKG': 8000,
    '1st Standard': 10000,
    '2nd Standard': 12000,
    '3rd Standard': 14000,
    '4th Standard': 16000,
    '5th Standard': 18000,
    '6th Standard': 18000,
    '7th Standard': 19000,
    '8th Standard': 20000,
    '9th Standard': 22000,
    '10th Standard': 25000
};

function populateClasses() {
    const dropdown = document.getElementById('class');
    dropdown.innerHTML = '<option value="">-- Select Class --</option>';
    for (let cls in seatCounts) {
        if (seatCounts[cls] < seatLimit) {
            dropdown.innerHTML += `<option value="${cls}">${cls}</option>`;
        }
    }
}

function updateFees() {
    const selectedClass = document.getElementById('class').value;
    const feeInput = document.getElementById('fees');
    if (selectedClass && classFees[selectedClass]) {
        feeInput.value = '₹' + classFees[selectedClass];
    } else {
        feeInput.value = '';
    }
}


window.onload = populateClasses;




























