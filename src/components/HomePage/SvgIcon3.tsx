import { memo, SVGProps } from 'react';

const SvgIcon3 = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 21 16' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <path d='M9.3695 4.14767L1.95475 11.4895H19.6461' stroke='black' strokeWidth={1.16667} strokeMiterlimit={10} />
  </svg>
);
const Memo = memo(SvgIcon3);
export { Memo as SvgIcon3 };
