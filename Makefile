# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: acarlott <acarlott@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/21 20:46:37 by acarlott          #+#    #+#              #
#    Updated: 2023/11/02 16:44:13 by acarlott         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CFLAGS = -Wall -Werror -Wextra
CC = gcc
AR = ar rcs
RM = rm -f
HEADER = ./include

SRCS =	srcs/ft_check_convert.c \
		srcs/ft_putstr.c \
		srcs/ft_printf.c \
		srcs/ft_putchar.c \
		srcs/ft_putnbr_int.c \
		srcs/ft_putnbr_base.c \
		srcs/ft_print_memory.c \
		srcs/ft_putnbr_unsigned.c

OBJS = ${SRCS:.c=.o}

%.o:	%.c Makefile ${HEADER}/ft_printf.h
		${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o} -I ${HEADER}

all: ${NAME}
${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

clean :
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re : clean all

.PHONY: all clean fclean re bonus
