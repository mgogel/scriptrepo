#! /usr/bin/env python

from matplotlib.matlab import *

t = arange(0.0, 2.0, 0.01)
s = sin(2*pi*t)
plot(t, s)
xlabel('time (s)')
ylabel('voltage (mV)')
title('About as simple as it gets, folks')

savefig('simple_plot_small.png', dpi=60)
savefig('simple_plot_large.png', dpi=120)

show()
