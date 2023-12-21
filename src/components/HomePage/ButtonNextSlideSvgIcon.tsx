import { memo, SVGProps } from 'react';

const ButtonNextSlideSvgIcon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 21 16' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path d='M11.3301 11.838L18.7448 4.49557H1.0535' stroke='black' strokeWidth={1.16667} strokeMiterlimit={10} />
  </svg>
);
const Memo = memo(ButtonNextSlideSvgIcon);
export { Memo as ButtonNextSlideSvgIcon };
