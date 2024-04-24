import torch
from modules.load_state import load_state
from models.with_mobilenet import PoseEstimationWithMobileNet
import argparse


# (256, 448)
def pth2onnx(model_path, output_path, height, width):
    net = PoseEstimationWithMobileNet()
    checkpoint = torch.load(model_path, map_location='cpu')
    load_state(net, checkpoint)
    # device = torch.device('cuda:0')
    # net = net.to(device)
    net.eval()
    # remove 1?
    dummy_input = torch.randn(1, 3, height, width)
    input_names = ['input_0']
    output_names = ['output_0', 'output_1', 'output_2']
    torch.onnx.export(net, dummy_input, output_path, input_names=input_names, output_names=output_names, verbose=False,
                      opset_version=10)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--height', type=int, default=270)
    parser.add_argument('--width', type=int, default=480)
    parser.add_argument('--input_path', default='data/human-pose-estimation-3d.pth', type=str)
    parser.add_argument('--output_path', type=str)
    args = parser.parse_args()
    pth2onnx(args.input_path, args.output_path, args.height, args.width)

