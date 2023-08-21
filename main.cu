#include <iostream>
#include <cmath>
#include <random>
#include <iomanip>
#include "pcg-cpp-0.98/include/pcg_random.hpp"
#include <thrust/host_vector.h>
#include <thrust/device_vector.h>
#include <thrust/fill.h>
#include <thrust/for_each.h>
#include <thrust/generate.h>
#include <thrust/execution_policy.h>

struct uniform_gen {
    double_t operator()() {
        pcg64 rng(pcg_extras::seed_seq_from<std::random_device{});
        std::uniform_real_distribution<double_t> uniform_dist(0, 1.0);
        return uniform_dist(rng);
    }
};

int main() {
    
}