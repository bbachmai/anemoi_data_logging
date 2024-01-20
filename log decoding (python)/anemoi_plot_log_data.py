import anemoi_log_decode_lib as anemoi
import matplotlib.pyplot as plt
import numpy as np

filename = 'FLOG_221003.moi'
anemoi.read_FLOG(filename)

fig, axs = plt.subplots(3, 3, sharex=True)
axs[0, 0].plot(anemoi.vGND, color='r', label='vGND')
axs[0, 0].plot(anemoi.vTAS, color='b', label='vTAS')
axs[0, 0].set_title('Speeds [km/h]')
axs[0, 0].legend()
axs[0, 0].minorticks_on()
axs[0, 0].grid(which='both', axis='y')
axs[0, 0].get_xaxis().set_visible(False)

axs[0, 1].plot(anemoi.track, color='r', label='track')
axs[0, 1].plot(anemoi.psi, color='b', label='heading')
axs[0, 1].set_title('Track & Heading [deg]')
axs[0, 1].legend()
axs[0, 1].minorticks_on()
axs[0, 1].grid(which='both', axis='y')
axs[0, 1].get_xaxis().set_visible(False)

axs[0, 2].plot(anemoi.wmag_live, color='b', label='live')
axs[0, 2].plot(anemoi.wmag_avg, color='0.5', label='avg')
axs[0, 2].set_title('Wind speed [km/h]')
axs[0, 2].legend()
axs[0, 2].minorticks_on()
axs[0, 2].grid(which='both', axis='y')
axs[0, 2].get_xaxis().set_visible(False)

axs[1, 0].plot(anemoi.theta)
axs[1, 0].set_title('Pitch angle [deg]')
axs[1, 0].get_xaxis().set_visible(False)
axs[1, 0].minorticks_on()
axs[1, 0].grid(which='both', axis='y')

axs[1, 1].plot(anemoi.phi)
axs[1, 1].set_title('Roll angle [deg]')
axs[1, 1].get_xaxis().set_visible(False)
axs[1, 1].minorticks_on()
axs[1, 1].grid(which='both', axis='y')

axs[1, 2].plot(anemoi.wdir_live, color='b', label='live')
axs[1, 2].plot(anemoi.wdir_avg, color='0.5', label='avg')
axs[1, 2].set_title('Wind direction [deg]')
axs[1, 2].legend()
axs[1, 2].get_xaxis().set_visible(False)
axs[1, 2].minorticks_on()
axs[1, 2].grid(which='both', axis='y')

axs[2, 0].plot(anemoi.T_C)
axs[2, 0].set_title('Temperature [C]')
axs[2, 0].minorticks_on()
axs[2, 0].grid(which='both', axis='y')

axs[2, 1].plot(anemoi.FL)
axs[2, 1].set_title('Flight level')
axs[2, 1].minorticks_on()
axs[2, 1].grid(which='both', axis='y')

axs[2, 2].plot(anemoi.pitot_pct)
axs[2, 2].set_title('Pitot %')
axs[2, 2].minorticks_on()
axs[2, 2].grid(which='both', axis='y')

plt.show()





