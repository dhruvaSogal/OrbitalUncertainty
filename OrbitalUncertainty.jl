using LinearAlgebra
using Random
state_vector = [100, 100, 100, 100, 100, 100]
uncertainty_vector = [2,2,2,2,2,2] # two-way uncertainty (ie +/- n)
gravitational_parameter = 398600.0
time_step = 60 
total_time = 3600
num_monte_carlos = 10;

function acceleration(state_vector)
    radius = norm(state_vector[1:3])
    acceleration = -1 * gravitational_parameter / radius^2
    acceleration_vector = acceleration * (state_vector[1:3] / radius)   
    return [state_vector[4], state_vector[5], state_vector[6], acceleration_vector[1], acceleration_vector[2], acceleration_vector[3]]
end

function rk4(state_vector, time_step)
    k1 = acceleration(state_vector)
    k2 = acceleration(state_vector + 0.5 * time_step * k1)
    k3 = acceleration(state_vector + 0.5 * time_step * k2)
    k4 = acceleration(state_vector + time_step * k3)
    return state_vector + (time_step / 6.0) * (k1 + 2.0 * k2 + 2.0 * k3 + k4)
end

function generate_state_with_uncertainty(state_vector, uncertainty_vector)
    state_vector_matrix = []
    for i in range(1, num_monte_carlos)
        x_error = rand(-1* uncertainty_vector[1], uncertainty_vector[1])
        y_error
        z_error
        v_x_error
        v_y_error
        v_z_error 
        
    end

end
