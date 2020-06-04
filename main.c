/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adelcros <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/15 16:22:48 by astriddel         #+#    #+#             */
/*   Updated: 2020/05/15 16:25:07 by astriddel        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int	main(void)
{
	char	dst[100];
	int		fd;
	char	buffer[100];
	char	*str;

	str = "hello hello";
	printf("len == %zd\n", ft_strlen("hello"));
	printf("len == %zd\n", strlen("hello"));
	printf("cpy == %s\n", ft_strcpy(dst, "hello you"));
	printf("cpy == %s\n", strcpy(dst, "hello you"));
	printf("cmp == %d\n", ft_strcmp("help", "helppppp"));
	printf("cmp == %d\n", strcmp("help", "helppppp"));
	printf("cmp == %d\n", ft_strcmp("helppppp", "help"));
	printf("cmp == %d\n", strcmp("helppppp", "help"));
	printf("cmp == %d\n", ft_strcmp("", ""));
	printf("cmp == %d\n", strcmp("", ""));
	fd = open("text.txt", O_WRONLY);
	printf("write == %zd\n", ft_write(fd, "helppppp\n", 4));
	printf("write == %zd\n", write(fd, "helppppp\n", 4));
	fd = open("text.txt", O_RDONLY);
	printf("read == %zd\n", ft_read(fd, buffer, 4));
	printf("read == %zd\n", read(fd, buffer, 4));
	printf("%s\n", ft_strdup(str));
	printf("%s\n", strdup(str));
	return (0);
}
