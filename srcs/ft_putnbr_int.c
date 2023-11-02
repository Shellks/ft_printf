/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_int.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: acarlott <acarlott@student.42lyon.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/21 15:31:44 by acarlott          #+#    #+#             */
/*   Updated: 2023/11/02 16:39:52 by acarlott         ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	ft_putnbr_int(int n)
{
	int	count;

	count = 0;
	if (n == -2147483648)
	{
		count += ft_putstr("-2147483648");
		return (11);
	}
	if (n < 0)
	{
		ft_putchar('-');
		n *= -1;
		count++;
	}
	if (n > 9)
		count += ft_putnbr_int(n / 10);
	count += ft_putchar(n % 10 + '0');
	return (count);
}
