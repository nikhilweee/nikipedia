#import "../template/shorthands.typ": *

== Machine Learning

=== Parameterization

When someone says that a model is parameterized by parameters $theta$, they are
referring to the intrinsic parameters of the model. As an example, consider a
very simple linear model.

$ y = m x + c $

Here, the output of the model $y$ depends on not only the input $x$ but also on
the parameters $m$ and $c$ and therefore in this case, $theta = {m, c}$. Though
we discuss a very simple case here, the notion of parameterization equally
applies to larger models with billions of parameters.

=== Regularization

Regularization is the practise of adding additional error terms in the loss.
Popular choices are L1 regularization, which adds an additional penalty $|bw|$ to
the loss term. Another choice is the L2 regularization, which adds a square term $|bw|^2$ to
the loss. Here $bw$ represents the weights of the network. Essentially we are
trying to prevent any one of these weights from blowing up.

Often times, fitting a model to a dataset is an ill posed problem. This means
that there may be more than one solutions to the problem, perhaps due to the
number of parameters of the model being more than the number of data points
available. In these cases, regularization can be seen as a way to introduce
additional constraints in order to get the desired solution.

=== Bayes' Rule

Bayes' rule allows us to update our belief about a hypothesis in light of new
evidence.

$ P("Hypothesis"|"Evidence") = P("Hypothesis") times
P("Evidence"|"Hypothesis") / P("Evidence") $

Here, $P("Hypothesis")$ is also called the _prior probability_ and it represents
our initial estimate of the hypothesis. Similarly, $P("Hypothesis"|"Evidence")$ is
the updated belief, and is therefore called the _posterior probability_.
$P("Evidence"|"Hypothesis")$ the likelihood of the evidence given that the
hypothesis is true, and the last term $P("Evidence")$ is the probability of the
evidence regardless of the hypothesis. Taking this new terminology into account,
here is a more succint form of the Bayes' rule. As a shorthand, just remember
_"posterior is prior times likelihood"_.

$ "Posterior" = "Prior" times "Likelihood" / "Evidence" $

@bishop2006pattern is a really good reference for Bayesian Methods and machine
learning in general.

=== Likelihood

The likelihood is the probability of the observed data as a function of the
model parameters.

$ p(x; theta) $

This notation is slightly different from the density function $p(x|theta)$ where $theta$ is
a random variable that is being conditioned on.

This is a slight difference from the notion of a probability density, where the
formulation is the same, except that when $theta$ is fixed, the function can be
viewed as a PDF whereas when $x$ is fixed, the function can be viewed as a
likelihood function.

== Large Language Models

=== Alignment

LLMs are trained on vast amounts of unsupervised data. Alignment is when we want
to steer the outputs of the LLM towards specific kinds of responses that we
prefer. Typically, this is done through a supervised fine tuning step followed
by RLHF (@concept-rhf) .

=== RLHF <concept-rhf>

Reinforcement Learning from Human Feedback is a technique used for aligning
LLMs. A reward model is trained using supervised fine tuning, which is used in
the next step to score responses from an LLM.