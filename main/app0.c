#include <modules/pm.h>

extern int mnist_test(int argc, char** argv);
extern int cifar_test(int argc, char** argv);
extern int vww_test(int argc, char** argv);
extern int mbnet_test(int argc, char** argv);

int main(void)
{
	bk_pm_module_vote_cpu_freq(PM_DEV_ID_DEFAULT, PM_CPU_FRQ_320M);

	mnist_test(0, NULL);
	cifar_test(0, NULL);
	vww_test(0, NULL);
	mbnet_test(0, NULL);

	return 0;
}