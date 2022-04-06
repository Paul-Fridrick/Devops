##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## infin_add
##

NAME	= libmy.a

RM	= rm -f

SRC	= 	sources/my_strlen.c				\
		sources/my_putstr.c				\
		sources/my_putchar.c			\
		sources/my_put_nbr.c			\
		sources/my_printf.c 			\
		sources/my_put_unsigned_nbr.c	\
		sources/my_put_nbr_base.c 		\
		sources/my_put_nbr_bin.c 		\
		sources/my_put_long.c 			\
		sources/my_putstr_unprintable.c\



OBJ	= $(SRC:.c=.o)

all: $(NAME)

$(NAME):	$(OBJ)
	 ar rc $(NAME) $(OBJ)
	 make clean

tests_run:
	make
	$(CC) test/test.c -o unit_tests --coverage -lcriterion -L . -lmy
	./unit_tests

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) a.out
	$(RM) unit_tests
	$(RM) *.gcda
	$(RM) *.gcno

re: fclean all

