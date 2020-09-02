/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: drina <drina@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/30 20:13:54 by drina             #+#    #+#             */
/*   Updated: 2020/09/02 17:27:17 by drina            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <sys/errno.h>
#include <string.h>
#include <fcntl.h>

int	main()
{
	char *str = "World\n";
	char dst[] = "Hello ";
	char str2[] = "Hello";
	char str3[] = "Hello";
	char *str_dup;
	char list[] = "111111111111";
	
	int i;
	i = ft_strlen(str);
	
	ft_strcpy(dst, str);
	
	printf("%d\n", i);
	printf("%s\n", dst);
	
	printf("%d\n", ft_strcmp(str2, str3));
	ft_write(1, str, 5);
	
	printf("%d\n", ft_write(1, str, 5));
	printf("%d\n", errno);

	str_dup = ft_strdup(str);
	ft_write(1, str_dup, 6);

	int fd = open("test.txt", O_RDONLY);
	printf("%d\n", ft_read(fd, list, 12));
	printf("%s", list);
	
	
	return (0);
}
