##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## my_sokoban
##

SRC = $(wildcard *c)

NAME = Devops

OBJ = $(SRC:.c=.o)

CFLAGS = -Wall -Wextra -lncurses

RM = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ) $(CFLAGS)
	$(RM) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)
	$(RM) a.out
	$(RM) *.o

re: fclean all
