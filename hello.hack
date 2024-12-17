<?hh // Hack code starts

// Function to add two numbers
function add(int $a, int $b): int {
    return $a + $b;
}

// Function with a default parameter
function greet(string $name = "Guest"): void {
    echo "Hello, $name!\n";
}

// Anonymous function to square a number
$square = ($x) ==> $x * $x;

// Function to calculate squares of numbers in a vec
function calculate_squares(vec<int> $numbers): vec<int> {
    $squares = vec[];
    foreach ($numbers as $num) {
        $squares[] = $num * $num;
    }
    return $squares;
}

<<__EntryPoint>>
function main(): void {
    // Variables with different data types
    echo "--- Variables and Data Types ---\n";
    $intVar = 42;            // Integer
    $floatVar = 3.14;        // Float
    $stringVar = "Hello";    // String
    $boolVar = true;         // Boolean
    $nullVar = null;         // Null

    echo "Integer: $intVar\n";
    echo "Float: $floatVar\n";
    echo "String: $stringVar\n";
    echo "Boolean: " . ($boolVar ? "true" : "false") . "\n";
    echo "Null: " . ($nullVar === null ? "null" : "not null") . "\n";

    // For loop example
    echo "\n--- For Loop ---\n";
    for ($i = 1; $i <= 5; $i++) {
        echo "Number: $i\n";
    }

    // While loop example
    echo "\n--- While Loop ---\n";
    $count = 1;
    while ($count <= 5) {
        echo "Count: $count\n";
        $count++;
    }

    // Foreach loop example
    echo "\n--- Foreach Loop ---\n";
    $arr = vec[1, 2, 3, 4, 5];
    foreach ($arr as $value) {
        echo "Value: $value\n";
    }

    // Function calls
    echo "\n--- Function Examples ---\n";
    $result = add(5, 10);
    echo "Sum of 5 and 10: $result\n";

    greet();           // Uses default value
    greet("Harold");   // Custom value

    echo "Square of 4: " . $square(4) . "\n";

    // Collections: Vec, Dict, and Keyset
    echo "\n--- Hack Collections ---\n";
    $numbers = vec[1, 2, 3, 4, 5];
    echo "Original Numbers: " . implode(", ", $numbers) . "\n";

    $squares = calculate_squares($numbers);
    echo "Squares: " . implode(", ", $squares) . "\n";

    $person = dict[
        'name' => 'Harold',
        'age' => 30,
    ];
    echo "Name: " . $person['name'] . "\n";
    echo "Age: " . $person['age'] . "\n";

    $uniqueValues = keyset['a', 'b', 'c', 'a'];
    echo "Unique Values: " . implode(", ", $uniqueValues) . "\n";
}
