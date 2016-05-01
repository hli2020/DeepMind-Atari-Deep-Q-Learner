opt = {}
opt.framework = 'alewrap'						--name of training framework
opt.env = 'breakout'							--name of environment to use
opt.game_path = '/home/hongyang/project/DeepMind-Atari-Deep-Q-Learner/roms/'
opt.pool_frms = 'type="max", size=2'
opt.actrep = 4									-- how many times to repeat action
-- play action 0 between 1 and random_starts, number of times at the start of each training episode
opt.random_starts = 30							
-- filename used for saving network and training history
opt.name = 'dqn_obj_det'
-- reload pretrained network						
opt.network = ''
opt.agent = 'NeuralQLearner'
-- fixed input seed for repeatable experiments
opt.seed = 1
-- saves the agent network in a separate file
opt.saveNetworkParams = true
-- frequency of progress output
opt.prog_freq = 100
-- the model is saved every save_freq steps
opt.save_freq = 500
-- frequency of greedy evaluation
opt.eval_freq = 200
opt.save_versions = 0

-- total number of training steps to perform
opt.steps = 10^4
-- number of evaluation steps
opt.eval_steps = 200
-- the higher the level, the more information is printed to screen
opt.verbose = 2
-- number of BLAS threads
opt.threads = 4
opt.gpu = 1

opt.agent_params = 'lr=0.00025, ep=1, ep_end=0.1, ep_endt=replay_memory,'..
    'discount=0.99, hist_len=4, learn_start=50000, replay_memory=1000000,'..
    'update_freq=4, n_replay=1,'..
    'network="convnet_atari3",'..
    'preproc="net_downsample_2x_full_y",'..
    'state_dim=7056, minibatch_size=32, rescale_r=1, ncols=1,'..
    'bufferSize=512, valid_size=500, target_q=10000,'..
    'clip_delta=1, min_reward=-1, max_reward=1'