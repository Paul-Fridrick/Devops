/*
** EPITECH PROJECT, 2021
** test.c
** File description:
** my_printf
*/

#include <criterion/criterion.h>
#include <criterion/redirect.h>

void redirect_all_std(void) {
    cr_redirect_stdout();
    cr_redirect_stderr();
}
