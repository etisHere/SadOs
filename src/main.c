extern void print_string(const char* str);
extern void read_string(char* buffer, int size);

void main()
{
    char input[256];  // Buffer to store user input

    print_string("Welcome to the TTY!\r\n");  // Display welcome message
    print_string("Type something: ");         // Display input prompt

    read_string(input, sizeof(input));  // Read user input

    print_string("You typed: ");        // Display echo message
    print_string(input);                // Display the user input

    while (1)
    {
        __asm__ volatile("hlt");  // Enter an infinite loop
    }
}

