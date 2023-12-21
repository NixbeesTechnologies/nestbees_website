import { memo, SVGProps } from 'react';

const RsArrowSvgIcon = (props: SVGProps<SVGSVGElement>) => (
  <svg preserveAspectRatio='none' viewBox='0 0 36 16' fill='none' xmlns='http://www.w3.org/2000/svg' {...props}>
    <g clipPath='url(#clip0_484_35)'>
      <path d='M19.423 14.528L32.134 1.94098H1.80603' stroke='black' strokeWidth={2} strokeMiterlimit={10} />
    </g>
    <defs>
      <clipPath id='clip0_484_35'>
        <rect width={36} height={15} fill='white' transform='translate(0 0.5)' />
      </clipPath>
    </defs>
  </svg>
);
const Memo = memo(RsArrowSvgIcon);
export { Memo as RsArrowSvgIcon };
