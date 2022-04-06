##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## infin_add
##

NAME	= libmy.a

RM	= rm -f

SRC	= 	s$(wildcard *.c)



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

