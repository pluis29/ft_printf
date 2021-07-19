# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lpaulo-d <lpaulo-d@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/19 00:04:48 by lpaulo-d          #+#    #+#              #
#    Updated: 2021/07/19 00:04:48 by lpaulo-d         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH = src
FILES = $(SRC_PATH)/ft_isdigit.c $(SRC_PATH)/ft_itoa.c\
		$(SRC_PATH)/ft_putchar_fd.c $(SRC_PATH)/ft_putstr_fd.c\
		$(SRC_PATH)/ft_strlen.c $(SRC_PATH)/print_char.c\
		$(SRC_PATH)/print_diu.c $(SRC_PATH)/print_p.c\
		$(SRC_PATH)/print_porcent.c $(SRC_PATH)/print_string.c\
		$(SRC_PATH)/print_x $(SRC_PATH)/check_flags.c

SRC = $(FILES:.c=.o)

NAME = ftprintf.a
CC = gcc
CCFLAGS = -Wall -Wextra -Werror
RE = rm -f

all: $(NAME)

$(NAME): $(SRC)
	ar -rcs $@ $^

bonus: all

clean:
	$(RM) $(SRC)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re