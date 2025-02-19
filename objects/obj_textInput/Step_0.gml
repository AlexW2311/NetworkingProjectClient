/// Display the text box and the text the user has entered
draw_text(x, y - 20, "Enter your username: ");
draw_text(x, y, "Username: " + keyboard_string);

// Optional: Limit the input to a max number of characters
if (string_length(keyboard_string) >= max_length) {
    keyboard_string = string_delete(keyboard_string, max_length + 1, string_length(keyboard_string));
}

// Handle input (keyboard characters)
if (keyboard_check_pressed(vk_backspace)) {
    // If the user presses backspace, remove the last character
    keyboard_string = string_delete(keyboard_string, string_length(keyboard_string), 1);
}

if (keyboard_check_pressed(vk_enter)) {
    // When the user presses Enter, finish the input and use the result
    var username = keyboard_string;
    show_debug_message("Username entered: " + username);

    // You can now use the username to send to the server or proceed with the next step
    // For example, set a global variable or call a function to process the username
}

