#ifndef MPC_CONTROLLER_SRC_MPC_CONTROLLER_H_
#define MPC_CONTROLLER_SRC_MPC_CONTROLLER_H_

#include<vector>
#include"eigen3/Eigen/Core"
#include"eigen3/Eigen/QR"
namespace waypoint_follower
{
class MPC_Controller
{
public:
	MPC_Controller();
	void CalculatePolynomial(Eigen::VectorXd& localPathx ,Eigen::VectorXd& localPathy);
	void CalculateErrors(const Eigen::VectorXd& current_state);
	Eigen::VectorXd polyfit(const Eigen::VectorXd& xvals, const Eigen::VectorXd& yvals, int order);
	double polyeval(const Eigen::VectorXd& coeffs, double x);
	void Solve(const Eigen::VectorXd& current_state);

	double vel_next;
	double cte;                               // cross track error; offset from the center of the road
	double epsi;                              // psi error
	double steering_angle_next;               // predicted actuator control; steering angle (δ)
	double throttle_next;                     // predicted actuator control; acceleration (a; throttle + brakes combined in the range of -1 to 1)
	Eigen::VectorXd wayPtPolynomialCoeffs;    // polyfit coeffs of our waypoint coordinates
	std::vector<double> predicted_xvals;      // predicted xvals (vehicles current trajectory)
	std::vector<double> predicted_yvals;      // predicted yvals (vehicles current trajectory)                             // psi error
	std::vector<std::vector<double> > initref_path_;
	std::vector<std::vector<double> > polyfit_path_;
	std::vector<std::vector<double> > predict_path_;
};
}


#endif /* MPC_CONTROLLER_SRC_MPC_CONTROLLER_H_ */
