# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anzouari <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/12 09:27:22 by anzouari          #+#    #+#              #
#    Updated: 2015/04/17 23:09:18 by anzouari         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OUT = libfts.a

NASM = nasm

CC = gcc

CFLAGS = -Wall -Wextra -Werror

FLAGS = -f macho64

SOURCES = ft_isalnum.s\
		  ft_isalpha.s\
		  ft_isdigit.s\
		  ft_isascii.s\
		  ft_isprint.s\
		  ft_toupper.s\
		  ft_tolower.s\
		  ft_puts.s\
		  ft_strlen.s\
		  ft_bzero.s\
		  ft_strcat.s\
		  ft_memset.s\
		  ft_memcpy.s\
		  ft_strdup.s\
		  ft_cat.s

OBJS = $(SOURCES:.s=.o)

all : $(OUT)

$(OUT) : $(OBJS)
	ar rc $(OUT) $(OBJS)
	ranlib $(OUT)

%.o: %.s
	$(NASM) $(FLAGS) $<

test : $(OUT) main.c
	$(CC) $(CFLAGS) main.c -L . -lfts

.PHONY: clean
clean :
	rm -rf $(OBJS)

.PHONY: fclean
fclean : clean
	rm -rf $(OUT)

.PHONY: re
re : fclean all
