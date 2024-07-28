<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Receive Blood</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            background-image: url('https://i.ibb.co/Nry3tYX/gettyimages-1214357163-612x612.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        header {
            background-color: #8a1f1f;
            color: #fff;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .logo img {
            max-width: 80px;
            height: auto;
        }

        .title {
            font-size: 28px;
            font-weight: 700;
            text-align: center;
            margin: 0;
        }

        .home-link {
            background-color: #e4dede;
            color: #1c1a1a;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .home-link:hover {
            background-color: #a63333;
            color: #fff;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #8a1f1f;
            font-size: 24px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
        }

        .form-group input[type="text"],
        .form-group input[type="number"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .form-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 14px;
            box-sizing: border-box;
        }

        .form-group button {
            background-color: #8a1f1f;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .form-group button:hover {
            background-color: #7f1d1d;
        }

        .menu {
            text-align: center;
            margin-top: 20px;
        }

        .menu a {
            color: #8a1f1f;
            text-decoration: none;
            margin-right: 20px;
            font-size: 14px;
            transition: color 0.3s;
        }

        .menu a:hover {
            color: #7f1d1d;
        }

        .availability {
            margin-top: 20px;
            text-align: center;
        }

        .availability table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .availability th, .availability td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .availability th {
            background-color: #8a1f1f;
            color: #fff;
        }

        @media (max-width: 768px) {
            .container {
                margin: 20px;
                padding: 20px;
            }

            .home-link {
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="https://i.ibb.co/fCP3HQV/2.png" alt="Blood Bank Logo">
        </div>
        <h1 class="title">Receive Blood</h1>
        <a href="/" class="home-link">Home</a>
    </header>
    <div class="container">
        <form id="blood-receive-form">
            <div class="form-group">
                <label for="hospital">Select Hospital:</label>
                <select id="hospital" name="hospital" required>
                    <option value="city-hospital">City Hospital</option>
                    <option value="green-valley-hospital">Green Valley Hospital</option>
                    <option value="mountain-view-clinic">Mountain View Clinic</option>
                    <option value="river-side-hospital">River Side Hospital</option>
                    <option value="sunshine-medical-center">Sunshine Medical Center</option>
                </select>
            </div>
            <div class="form-group">
                <button type="button" onclick="showAvailability()">Check Availability</button>
            </div>
        </form>
        <div class="availability" id="availability-section">
            <!-- Availability data will be displayed here -->
        </div>
        <div class="form-group menu">
            <a href="/contact">Contact us</a>
            
        </div>
    </div>

    <script>
        function showAvailability() {
            var hospitalSelect = document.getElementById("hospital");
            var selectedHospital = hospitalSelect.value;

            // Mock data for blood availability (random numbers)
            var availabilityData = {
                "city-hospital": {
                    "A+": Math.floor(Math.random() * 10) + 1,
                    "B+": Math.floor(Math.random() * 10) + 1,
                    "AB+": Math.floor(Math.random() * 10) + 1,
                    "O+": Math.floor(Math.random() * 10) + 1,
                    "A-": Math.floor(Math.random() * 10) + 1,
                    "B-": Math.floor(Math.random() * 10) + 1,
                    "AB-": Math.floor(Math.random() * 10) + 1,
                    "O-": Math.floor(Math.random() * 10) + 1
                },
                "green-valley-hospital": {
                    "A+": Math.floor(Math.random() * 10) + 1,
                    "B+": Math.floor(Math.random() * 10) + 1,
                    "AB+": Math.floor(Math.random() * 10) + 1,
                    "O+": Math.floor(Math.random() * 10) + 1,
                    "A-": Math.floor(Math.random() * 10) + 1,
                    "B-": Math.floor(Math.random() * 10) + 1,
                    "AB-": Math.floor(Math.random() * 10) + 1,
                    "O-": Math.floor(Math.random() * 10) + 1
                },
                "mountain-view-clinic": {
                    "A+": Math.floor(Math.random() * 10) + 1,
                    "B+": Math.floor(Math.random() * 10) + 1,
                    "AB+": Math.floor(Math.random() * 10) + 1,
                    "O+": Math.floor(Math.random() * 10) + 1,
                    "A-": Math.floor(Math.random() * 10) + 1,
                    "B-": Math.floor(Math.random() * 10) + 1,
                    "AB-": Math.floor(Math.random() * 10) + 1,
                    "O-": Math.floor(Math.random() * 10) + 1
                },
                "river-side-hospital": {
                    "A+": Math.floor(Math.random() * 10) + 1,
                    "B+": Math.floor(Math.random() * 10) + 1,
                    "AB+": Math.floor(Math.random() * 10) + 1,
                    "O+": Math.floor(Math.random() * 10) + 1,
                    "A-": Math.floor(Math.random() * 10) + 1,
                    "B-": Math.floor(Math.random() * 10) + 1,
                    "AB-": Math.floor(Math.random() * 10) + 1,
                    "O-": Math.floor(Math.random() * 10) + 1
                },
                "sunshine-medical-center": {
                    "A+": Math.floor(Math.random() * 10) + 1,
                    "B+": Math.floor(Math.random() * 10) + 1,
                    "AB+": Math.floor(Math.random() * 10) + 1,
                    "O+": Math.floor(Math.random() * 10) + 1,
                    "A-": Math.floor(Math.random() * 10) + 1,
                    "B-": Math.floor(Math.random() * 10) + 1,
                    "AB-": Math.floor(Math.random() * 10) + 1,
                    "O-": Math.floor(Math.random() * 10) + 1
                }
            };

            // Constructing the table to display availability
            var availabilitySection = document.getElementById("availability-section");
            var tableHtml = "<h2>Blood Availability at " + selectedHospital + "</h2>";
            tableHtml += "<table><tr><th>Blood Type</th><th>Availability (L)</th></tr>";

            // Loop through availability data for selected hospital
            var hospitalData = availabilityData[selectedHospital];
            Object.keys(hospitalData).forEach(function(bloodType) {
                tableHtml += "<tr><td>" + bloodType + "</td><td>" + hospitalData[bloodType] + "</td></tr>";
            });

            tableHtml += "</table>";
            availabilitySection.innerHTML = tableHtml;
        }
    </script>
</body>
</html>
