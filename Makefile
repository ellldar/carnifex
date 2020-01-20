# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: esupatae <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 21:13:38 by esupatae          #+#    #+#              #
#    Updated: 2020/01/19 15:08:36 by esupatae         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = carnifex
SAMPLE = sample.lisp

all: $(NAME)

$(NAME):
	sbcl --load $(NAME).lisp

sample:
	sbcl --load $(SAMPLE)
